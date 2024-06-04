fn largest_prime_factor(mut n: u64) -> u64 {
    let mut i = 2;
    while i * i <= n {
        if n % i == 0 {
            n /= i;
        } else {
            i += 1;
        }
    }
    n
}

fn main() {
    let num = 600851475143;
    let largest_factor = largest_prime_factor(num);
    println!("The largest prime factor of {} is {}", num, largest_factor);
}
