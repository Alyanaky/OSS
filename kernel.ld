ENTRY(boot)

MEMORY
{
    RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 128M
}

SECTIONS
{
    . = 0x80400000;

    .text : {
        *(.text)
    }

    .rodata : {
        *(.rodata)
    }

    .data : {
        *(.data)
    }

    .bss : {
        __bss = .;
        *(.bss)
        __bss_end = .;
    }

    __stack_top = ORIGIN(RAM) + LENGTH(RAM);
}

