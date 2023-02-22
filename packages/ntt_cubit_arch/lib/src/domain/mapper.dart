abstract class Mapper<O, I> {
  O apply(I data);
}

abstract class ReversibleMapper<O, I> {
  O apply(I data);

  I reverse(O data);
}

abstract class Mapper2<O, I1, I2> {
  O apply(I1 data1, I2 data2);
}
