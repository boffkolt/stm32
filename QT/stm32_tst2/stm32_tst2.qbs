import qbs
Project {
    name: "simple"
    Product {
        name: "micro"
        type: "elf"
        Group {
            name: "sources"
            files: ["*.c"]
            fileTags: ['c']
        }
        Group {
            name: "headers"
            files: ["*.h"]
            fileTags: ['h']
        }
        Group {
            name: "startup"
            files: ["*.S"]
            fileTags: ['S']
        }
         Group {
                name: "ldscripts"
                files: ["*.ld"]
                fileTags: ['ld']
        }
        Rule {
            inputs: ["c"]
            Artifact {
                fileTags: ['obj']
                filePath: input.fileName + '.o'
            }
            prepare: {

                var args = [];
                args.push("-c")
                args.push("-mcpu=cortex-m3")
                args.push("-mthumb")
                args.push("-Wall")
                args.push("-O0")
                args.push("-mapcs-frame")
                args.push("-D__thumb2__=1")



                args.push("-msoft-float")
                args.push("-gdwarf-2")
                args.push("-mno-sched-prolog")
                args.push("-fno-hosted")
                args.push("-mtune=cortex-m3")

                args.push("-march=armv7-m")
                args.push("-mfix-cortex-m3-ldrd")
                args.push("-ffunction-sections")
                args.push("-fdata-sections")

                args.push(input.filePath);
                args.push('-o');
                args.push(output.filePath);
                var compilerPath = "/usr/bin/arm-none-eabi-gcc-5.2.1"
                var cmd = new Command(compilerPath, args);
                cmd.description = 'compiling ' + input.fileName;
                cmd.highlight = 'compiler';
                cmd.silent = false;
                return cmd;
            }
        }

        Rule {
            inputs: ["S"]
            Artifact {
                fileTags: ['obj']
                filePath: input.fileName + '.o'
            }
            prepare: {

                /*CFLAGS=-c -mcpu=cortex-m3 -mthumb -Wall -O0 -mapcs-frame -D__thumb2__=1
                CFLAGS+=-msoft-float -gdwarf-2 -mno-sched-prolog -fno-hosted -mtune=cortex-m3
                CFLAGS+=-march=armv7-m -mfix-cortex-m3-ldrd -ffunction-sections -fdata-sections
                CFLAGS+=-I./cmsis -I./stm32_lib -I.*/

                var args = [];
                args.push("-mcpu=cortex-m3")
                args.push("-mthumb")
                args.push("-gdwarf-2")
                args.push(input.filePath);
                args.push('-o');
                args.push(output.filePath);
                var asPath = "/usr/bin/arm-none-eabi-as"
                var cmd = new Command(asPath, args);
                cmd.description = 'compiling ' + input.fileName;
                cmd.highlight = 'compiler';
                cmd.silent = false;
                return cmd;
            }
        }
                Rule {
                            multiplex: true
                            inputs: ['obj']
                            Artifact{
                                fileTags:['elf']
                                filePath: project.name + '.elf'
                            }
                            prepare:{
                                var args = []
                                args.push("-mcpu=cortex-m3")
                                args.push("-mthumb")
                                args.push("-g")
                                args.push("-nostartfiles")
                                args.push("-O0")
                                args.push("-Wl,--gc-sections")
                                for(i in inputs['obj'])
                                    args.push(inputs["obj"][i].filePath);
                                args.push("-T/home/engineer/coding/qt/stm32_tst/stm32f100rb_flash.ld")
                                args.push('-o');
                                args.push(output.filePath);
                                var compilerPath = "/usr/bin/arm-none-eabi-gcc-5.2.1"
                                var cmd = new Command(compilerPath,args);
                                cmd.description = "linking"+project.name
                                return cmd;
                            }

                }
        }
}

