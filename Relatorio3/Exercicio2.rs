fn preenche_arr(arr: &mut [i32], x: i32) {
  for (i, itens) in arr.iter_mut().enumerate() {
      *itens = (i as i32) * x;
  }
}

fn main() {
  let mut arr = [0; 10];
  let num = 2;

  preenche_arr(&mut arr, num);

  println!("Array preenchido: {:?}", arr);
}