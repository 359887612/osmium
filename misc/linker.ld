OUTPUT_ARCH("riscv")

ENTRY(_start)

SECTIONS
{
    . = 0x90000000;

    .reset.boot :
    {
	*(.boot)
    }

    .text :
    {
        *(.text .text.*)
    }

    .rodata :
    {
        *(.rdata .rodata .rodata.*)
    }

    .data :
    {
        *(.data .data.*)
    }

    .bss :
    {
        *(.bss bss.*)
    }
}
