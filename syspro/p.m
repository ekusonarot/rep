        .text
        .align 2

main:
        move    $s0, $ra                # main ‚ğŒÄ‚ñ‚¾–ß‚èæ‚Ì
                                        # ƒAƒhƒŒƒX‚ª“ü‚Á‚Ä‚¢‚é $ra
                                        # ‚ğ $s0 ‚É•Û‘¶‚µ‚Ä‚¨‚­

        li      $a0, 72                 # $a0 ‚Éˆø” 'H' == 72
        jal     putc                    # putc ‚ğŒÄ‚Ô
        li      $a0, 101                # $a0 ‚Éˆø” 'e' == 101
        jal     putc                    # putc ‚ğŒÄ‚Ô
        li      $a0, 108                # $a0 ‚Éˆø” 'l' == 108
        jal     putc                    # putc ‚ğŒÄ‚Ô
        li      $a0, 108                # $a0 ‚Éˆø” 'l' == 108
        jal     putc                    # putc ‚ğŒÄ‚Ô
        li      $a0, 111                # $a0 ‚Éˆø” 'o' == 111
        jal     putc                    # putc ‚ğŒÄ‚Ô

        move    $ra, $s0                # $s0 ‚É•Û‘¶‚µ‚Ä‚¨‚¢‚½
                                        # –ß‚èæ‚ğ $ra ‚É“ü‚ê‚é

        j       $ra                     # main‚ğŒÄ‚ñ‚¾–ß‚èæ‚É”ò‚Ô

putc:
        lw      $t0, 0xffff0008         # $t0 = *(0xffff0008)
        li      $t1, 1                  # $t1 = 1
        and     $t0, $t0, $t1           # $t0 &= $t1
        beqz    $t0, putc               # if ($t0 == 0) goto putc
        sw      $a0, 0xffff000c         # *(0xffff000c) = $a
        j       $ra