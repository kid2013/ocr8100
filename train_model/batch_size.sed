#!/bin/sed

/well_placed.list/{n; c batch_size : 124
  }
/alnum_train.list/{n; c batch_size : 124
  }
/alnum_0712_train.list/{n; c batch_size : 124
  }
/chinese_train.list/{n; c batch_size : 500
  }
/random_alnum0712_chinese_train.list/{n; c batch_size : 600
  }
/180709_alnum_test.list/{n; c batch_size : 12
  }
/idcard_alnum_test.list/{n; c batch_size : 72
  }
/idcard_chinese_test.list/{n; c batch_size : 500
 }
