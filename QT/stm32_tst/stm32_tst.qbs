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

                /*CFLAGS=-c -mcpu=cortex-m3 -mthumb -Wall -O0 -mapcs-frame -D__thumb2__=1
                CFLAGS+=-msoft-float -gdwarf-2 -mno-sched-prolog -fno-hosted -mtune=cortex-m3
                CFLAGS+=-march=armv7-m -mfix-cortex-m3-ldrd -ffunction-sections -fdata-sections
                CFLAGS+=-I./cmsis -I./stm32_lib -I.*/

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


       // ASFLAGS=-mcpu=cortex-m3 -I./cmsis -I./stm32_lib -gdwarf-2 -gdwarf-2


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




     /* Rule{
            multiplex: true
            inputs: ['obj']
            Artifact{
                fileTags:['elf']
                filePath: project.name + '.elf'
            }
            prepare:{
*/
 /* TOOLS_PATH=/usr/
                TOOLS_PREFIX=arm-none-eabi-
                TOOLS_VERSION=5.2.1

                LDFLAGS=-static -mcpu=cortex-m3 -mthumb -mthumb-interwork -Wl,--start-group
                LDFLAGS+=-L/usr/lib/gcc/arm-none-eabi/5.2.1/thumb2
                LDFLAGS+=-L$(TOOLS_PATH)/arm-none-eabi/lib/thumb2 -nostdlib -lg -lstdc++ -lsupc++ -lgcc -lm
                LDFLAGS+=-Ttext=0x8000000
                LDFLAGS+=-Wl,--end-group -Xlinker -Map -Xlinker input.fileName.map -Xlinker
                LDFLAGS+=-T ./stm32f100rb_flash.ld -o input.fileName.elf

                var args = []
                args.push("-static")
                args.push("-mcpu=cortex-m3")
                args.push("-mthumb")
                args.push("-mthumb-interwork")
                args.push("-Wl,--start-group")

                args.push("-L/usr/lib/gcc/arm-none-eabi/5.2.1/thumb2 ")

                args.push("-L/usr/arm-none-eabi/lib/thumb2")
                args.push("-nostdlib")
                args.push("-lg")
                args.push("-lstdc++")
                args.push("-lsupc++")
                args.push("-lgcc")
                args.push("-lm")

                args.push("-Ttext=0x8000000")

                args.push("-Wl,--end-group")
                args.push("-Xlinker")
                args.push("-Map")
                args.push("-Xlinker project.name.map")
                args.push("-Xlinker")

                args.push("-T./stm32f100rb_flash.ld")
                args.push("-o project.name.elf")

                for(i in inputs['obj'])
                    args.push(inputs["obj"][i].filePath);
                args.push("-Tstm32f100rb_flash.ld")
                args.push('-o');
                args.push(output.filePath);
                var compilerPath = "/usr/bin/arm-none-eabi-gcc-5.2.1"
                var cmd = new Command(compilerPath,args);
                cmd.description = "linking"+project.name
                return cmd;
                     }*/
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

