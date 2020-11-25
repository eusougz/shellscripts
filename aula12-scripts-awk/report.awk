BEGIN {
        total_recebido = 0
        total_recebido_linha = 0
        maior_contrib = 0
        menor_contrib = 2**PREC

        OFS="\t"
        FS=":"
        printf "%-20s %-15s %-8s %-8s %-8s %-8s\n", "Nome", "Telefone", "Jan", "Fev", "Mar", "Total"
        print "---------------------------------------------------------------------"
}

{
        total_recebido += $3 + $4 + $5
}

$3 > maior_contrib { maior_contrib = $3 }
$4 > maior_contrib { maior_contrib = $4 }
$5 > maior_contrib { maior_contrib = $5 }

$3 < menor_contrib { menor_contrib = $3 }
$4 < menor_contrib { menor_contrib = $4 }
$5 < menor_contrib { menor_contrib = $5 }

{
        total_recebido_linha = $3 + $4 + $5
        printf "%-20s %-15s %7.2f %7.2f %7.2f %8.2f\n", $1, $2, $3, $4, $5, total_recebido_linha
}

END {
        printf "\nRelatório\n"
        print "----------------------------------------------------------------------"
        printf "Total recebido: %.2f\n", total_recebido
        printf "Contribuição média: %.2f\n", total_recebido/NR
        printf "Menor contribuição: %.2f\n", menor_contrib
        printf "Maior contribuição: %.2f\n", maior_contrib
}
