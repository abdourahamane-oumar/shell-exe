function somme ()
{
    totale=$(($1+$2))
    echo "$totale"

    return 1;
}
function sous ()
{
    totale=$(($1-$2))
    echo "$totale"

    return 1;
}
function multi
{
    totale=$(($1*$2))
    echo "$totale"

    return 1;
}
function div
{
    totale=$(($1/$2))
    echo "$totale"

    return 1;
}

for ((i=1;i<=$#;i++)) do
{
    if   test ${!i} = "+"
    then
            somme $1 $3
    elif  test ${!i} = "-"
    then
            sous $1 $3
    elif  test ${!i} = "x"
    then
            multi $1 $3

    elif test ${!i} = "/"
    then
            div $1 $3
    fi
}
done
