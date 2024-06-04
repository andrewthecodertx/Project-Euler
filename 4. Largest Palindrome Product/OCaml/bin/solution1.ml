let is_palindrome n =
  let s = string_of_int n in
  let len = String.length s in
  let rec aux i =
    if i >= len / 2 then true
    else if s.[i] <> s.[len - i - 1] then false
    else aux (i + 1)
  in
  aux 0

let largest_palindrome () =
  let max_product = ref 0 in
  for i = 999 downto 100 do
    for j = 999 downto 100 do
      let product = i * j in
      if is_palindrome product && product > !max_product then
        max_product := product
    done
  done;
  !max_product

let () =
  Printf.printf "The largest palindrome is: %d\n" (largest_palindrome ())
