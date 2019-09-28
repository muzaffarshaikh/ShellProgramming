factorial()
{
fact=$1
if((local<=2)); then
echo $fact
else
f=$((fact -1))
f=$(factorial $f)
f=$((f*fact))
echo $f
fi
}
read -p "Enter the number:" n
if((n==0)); then
echo 1
else
factorial $n
fi