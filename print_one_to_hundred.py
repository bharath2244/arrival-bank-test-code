dict_of_tens = {
  10: 'Ten',
  20: 'Twenty',
  30: 'Thirty',
  40: 'Forty',
  50: 'Fifty',
  60: 'Sixty',
  70: 'Seventy',
  80: 'Eighty',
  90: 'Ninety',
  100: 'Hundred'
}

for i in range(1, 101):
  if i in dict_of_tens:
    print(dict_of_tens[i])
  else:
    print(i)
