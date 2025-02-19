read -p "Enter first number : " n1
read -p "Enter second number : " n2
read -p "Enter third number : " n3
read -p "Enter fourth number : " n4

sum=$(( n1 + n2 + n3 + n4 ))

avg=$(( sum / 4 ))

product=$(( n1 * n2 * n3 * n4 ))

echo "Sum : $sum"
echo "Average : $avg"
echo "Product : $product"
