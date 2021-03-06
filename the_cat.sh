C=$(printf '\033')
R="${C}[41;31m"
O="${C}[43;33m"
Y="${C}[103;93m"
G="${C}[42;32m"
B="${C}[44;34m"
I="${C}[46;36m"
P="${C}[45;35m"
BLACK="${C}[30;40m"
WHITE="${C}[97;107m"
SKIN="${C}[90;100m"
GRAY="${C}[37;47m"
PINK="${C}[95;105m"
L_R="${C}[101;91m"
NC="${C}[0m"
R1="            " # 12
R2="      " # 6
BD="                                        " # 20
BDE="  " # 2


function trap_Ctrl_C() {
	tput clear
	exit 2
}

frame=(
	"
	${NC}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}
	${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R2}${NC}${SKIN}${BD}${NC}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                                    ${SKIN}  ${NC}
	${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}             ${R}  ${PINK}                 ${Y}  ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}     ${R}  ${PINK}         ${SKIN}    ${PINK}            ${SKIN}${Y}  ${SKIN}  ${NC}          ${SKIN}    ${NC}
	${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}  ${GRAY}  ${SKIN}  ${PINK}  ${R}  ${PINK}      ${SKIN}${Y}  ${SKIN}  ${NC}       ${SKIN}   ${GRAY}  ${SKIN}  ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}  ${R}  ${PINK}        ${R}  ${PINK}  ${SKIN}  ${GRAY}    ${SKIN}                      ${NC}${GRAY}    ${SKIN}  ${NC}
	${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}                                  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}        ${R}  ${PINK}      ${SKIN}       ${B}  ${BLACK}  ${SKIN}            ${B}  ${BLACK}  ${SKIN}       ${NC}
	${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}       ${BLACK}    ${SKIN}            ${BLACK}    ${SKIN}       ${NC}
	${B}${R1}${R1}${R1}${R1}${B}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}   ${R}  ${PINK}           ${SKIN}    ${R}    ${SKIN}          ${BLACK}  ${SKIN}      ${R}    ${SKIN}    ${NC}
	${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}    ${R}    ${SKIN}                  ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}           ${R}  ${PINK}   ${SKIN}       ${BLACK} ${SKIN}        ${BLACK}  ${SKIN}        ${BLACK} ${SKIN}       ${NC}
	${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                  ${SKIN}     ${BLACK}                    ${SKIN}     ${NC}
	${P}${R1}${R1}${R1}${R1}${P}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                      ${SKIN}                          ${NC}
	${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}   ${SKIN}   ${SKIN}${BD}          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}    ${GRAY}     ${SKIN}  ${NC}  ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}  ${GRAY}     ${SKIN}  ${NC}    ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}       ${NC}      ${SKIN}      ${NC}               ${SKIN}    ${NC}         ${SKIN}    ${NC}
	"
	"
	${NC}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BD}${NC}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                                    ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}             ${R}  ${PINK}                 ${Y}  ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}     ${R}  ${PINK}         ${SKIN}    ${PINK}            ${SKIN}${Y}  ${SKIN}  ${NC}          ${SKIN}    ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}  ${GRAY}  ${SKIN}  ${PINK}  ${R}  ${PINK}      ${SKIN}${Y}  ${SKIN}  ${NC}       ${SKIN}   ${GRAY}  ${SKIN}  ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}  ${R}  ${PINK}        ${R}  ${PINK}  ${SKIN}  ${GRAY}    ${SKIN}                      ${NC}${GRAY}    ${SKIN}  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}                                  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}        ${R}  ${PINK}      ${SKIN}       ${B}  ${BLACK}  ${SKIN}            ${B}  ${BLACK}  ${SKIN}       ${NC}
	${B}${R1}${R1}${R1}${R1}${B}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}       ${BLACK}    ${SKIN}            ${BLACK}    ${SKIN}       ${NC}
	${B}${R1}${R1}${R1}${R1}${B}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}   ${R}  ${PINK}           ${SKIN}    ${R}    ${SKIN}          ${BLACK}  ${SKIN}      ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}    ${R}    ${SKIN}                  ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}           ${R}  ${PINK}   ${SKIN}       ${BLACK} ${SKIN}        ${BLACK}  ${SKIN}        ${BLACK} ${SKIN}       ${NC}
	${P}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                  ${SKIN}     ${BLACK}                    ${SKIN}     ${NC}
	${P}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                      ${SKIN}                          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}   ${SKIN}   ${SKIN}${BD}          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}    ${GRAY}     ${SKIN}  ${NC}  ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}  ${GRAY}     ${SKIN}  ${NC}    ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}       ${NC}      ${SKIN}      ${NC}               ${SKIN}    ${NC}         ${SKIN}    ${NC}
	" 
	"
	${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R1}${NC}${R1}${R}${R2}${NC}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BD}${NC}
	${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R1}${NC}${R}${R1}${O}${R2}${SKIN}${BDE}${Y}                                    ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}             ${R}  ${PINK}                 ${Y}  ${SKIN}  ${NC}
	${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R1}${NC}${O}${R1}${Y}${R2}${SKIN}${BDE}${Y}  ${PINK}     ${R}  ${PINK}         ${SKIN}    ${PINK}            ${SKIN}${Y}  ${SKIN}  ${NC}          ${SKIN}    ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}  ${GRAY}  ${SKIN}  ${PINK}  ${R}  ${PINK}      ${SKIN}${Y}  ${SKIN}  ${NC}       ${SKIN}   ${GRAY}  ${SKIN}  ${NC}
	${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R1}${NC}${Y}${R1}${G}${R2}${SKIN}${BDE}${Y}  ${PINK}  ${R}  ${PINK}        ${R}  ${PINK}  ${SKIN}  ${GRAY}    ${SKIN}                      ${NC}${GRAY}    ${SKIN}  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}                                  ${NC}
	${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R1}${NC}${G}${R1}${B}${R2}${SKIN}${BDE}${Y}  ${PINK}        ${R}  ${PINK}      ${SKIN}       ${B}  ${BLACK}  ${SKIN}            ${B}  ${BLACK}  ${SKIN}       ${NC}
	${B}${R1}${R1}${B}${R1}${R1}${B}${R1}${R1}${B}${R1}${R1}${B}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}       ${BLACK}    ${SKIN}            ${BLACK}    ${SKIN}       ${NC}
	${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R1}${NC}${B}${R1}${I}${R2}${SKIN}${BDE}${Y}  ${PINK}   ${R}  ${PINK}           ${SKIN}    ${R}    ${SKIN}          ${BLACK}  ${SKIN}      ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}    ${R}    ${SKIN}                  ${R}    ${SKIN}    ${NC}
	${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R1}${NC}${I}${R1}${P}${R2}${SKIN}${BDE}${Y}  ${PINK}           ${R}  ${PINK}   ${SKIN}       ${BLACK} ${SKIN}        ${BLACK}  ${SKIN}        ${BLACK} ${SKIN}       ${NC}
	${P}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                  ${SKIN}     ${BLACK}                    ${SKIN}     ${NC}
	${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}${R1}${P}${R1}${NC}      ${SKIN}${BDE}${Y}                      ${SKIN}                          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}   ${SKIN}   ${SKIN}${BD}          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}    ${GRAY}     ${SKIN}  ${NC}  ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}  ${GRAY}     ${SKIN}  ${NC}    ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}       ${NC}      ${SKIN}      ${NC}               ${SKIN}    ${NC}         ${SKIN}    ${NC}
	" 
	"
	${NC}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BD}${NC}
	${R}${R1}${R1}${R1}${R1}${R}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                                    ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}             ${R}  ${PINK}                 ${Y}  ${SKIN}  ${NC}
	${O}${R1}${R1}${R1}${R1}${O}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}     ${R}  ${PINK}         ${SKIN}    ${PINK}            ${SKIN}${Y}  ${SKIN}  ${NC}          ${SKIN}    ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}  ${GRAY}  ${SKIN}  ${PINK}  ${R}  ${PINK}      ${SKIN}${Y}  ${SKIN}  ${NC}       ${SKIN}   ${GRAY}  ${SKIN}  ${NC}
	${Y}${R1}${R1}${R1}${R1}${Y}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}  ${R}  ${PINK}        ${R}  ${PINK}  ${SKIN}  ${GRAY}    ${SKIN}                      ${NC}${GRAY}    ${SKIN}  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}                                  ${NC}
	${G}${R1}${R1}${R1}${R1}${G}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}        ${R}  ${PINK}      ${SKIN}       ${B}  ${BLACK}  ${SKIN}            ${B}  ${BLACK}  ${SKIN}       ${NC}
	${B}${R1}${R1}${R1}${R1}${B}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}       ${BLACK}    ${SKIN}            ${BLACK}    ${SKIN}       ${NC}
	${B}${R1}${R1}${R1}${R1}${B}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}   ${R}  ${PINK}           ${SKIN}    ${R}    ${SKIN}          ${BLACK}  ${SKIN}      ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                ${SKIN}    ${R}    ${SKIN}                  ${R}    ${SKIN}    ${NC}
	${I}${R1}${R1}${R1}${R1}${I}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}  ${PINK}           ${R}  ${PINK}   ${SKIN}       ${BLACK} ${SKIN}        ${BLACK}  ${SKIN}        ${BLACK} ${SKIN}       ${NC}
	${P}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}${NC}${SKIN}${BDE}${Y}  ${PINK}                  ${SKIN}     ${BLACK}                    ${SKIN}     ${NC}
	${P}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R2}${SKIN}${BDE}${Y}                      ${SKIN}                          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}   ${SKIN}   ${SKIN}${BD}          ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}    ${GRAY}     ${SKIN}  ${NC}  ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}  ${GRAY}     ${SKIN}  ${NC}    ${SKIN}  ${NC}${GRAY}    ${NC}${SKIN}  ${NC}           ${SKIN}  ${GRAY}    ${SKIN}  ${NC}     ${SKIN}  ${GRAY}    ${SKIN}  ${NC}
	${R1}${R1}${R1}${R1}${R1}${R1}${R1}${R1}${SKIN}       ${NC}      ${SKIN}      ${NC}               ${SKIN}    ${NC}         ${SKIN}    ${NC}
	"
	)

trap "trap_Ctrl_C" 2
tput clear
tput sc

i=0
while sleep 0.15; do
	echo -e "${frame[i%4]}"
	((i++));
	tput rc
done

# echo -e "${frame[2]}"