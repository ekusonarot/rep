        .text
        .align 2

main:
        move    $s0, $ra                # main ���Ă񂾖߂���
                                        # �A�h���X�������Ă��� $ra
                                        # �� $s0 �ɕۑ����Ă���

        li      $a0, 72                 # $a0 �Ɉ��� 'H' == 72
        jal     putc                    # putc ���Ă�
        li      $a0, 101                # $a0 �Ɉ��� 'e' == 101
        jal     putc                    # putc ���Ă�
        li      $a0, 108                # $a0 �Ɉ��� 'l' == 108
        jal     putc                    # putc ���Ă�
        li      $a0, 108                # $a0 �Ɉ��� 'l' == 108
        jal     putc                    # putc ���Ă�
        li      $a0, 111                # $a0 �Ɉ��� 'o' == 111
        jal     putc                    # putc ���Ă�

        move    $ra, $s0                # $s0 �ɕۑ����Ă�����
                                        # �߂��� $ra �ɓ����

        j       $ra                     # main���Ă񂾖߂��ɔ��

putc:
        lw      $t0, 0xffff0008         # $t0 = *(0xffff0008)
        li      $t1, 1                  # $t1 = 1
        and     $t0, $t0, $t1           # $t0 &= $t1
        beqz    $t0, putc               # if ($t0 == 0) goto putc
        sw      $a0, 0xffff000c         # *(0xffff000c) = $a
        j       $ra