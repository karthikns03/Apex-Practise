public class SuperMarket extends Product {
    private Double total = 0.0;
    
    public List<Product> productList = new List<Product>{new product(10,'Prod1',55.5,90),
                                              new product(15,'Prod5',51.5,10),
                                              new product(16,'Prod2',75.5,90)
    										};

    public SuperMarket(Integer product, String productName, Double productPrice, Integer productStock) {
        super(product, productName, productPrice, productStock);
    }
    public superMarket(){}

    public void doBilling() {
        for (Product product : productList) {
            total += product.productPrice;
        }
        System.debug(total);
    }

    private void doReorder() {
        boolean allStocksLessThan20 = true;

        for (Product product : productList) {
            if (product.productStock > 20) {
                allStocksLessThan20 = false;
                break;
            }
        }

        if (allStocksLessThan20) {
            System.debug('Reorder Stock');
        } else {
            System.debug('No need for reorder');
        }
    }

    public void display() {
        doBilling();
        doReorder();
    }
}


/*
 * 
SuperMarket obj = new SuperMarket(new List<Integer>{1, 2, 3}, new List<String>{'Product 1', 'Product 2', 'Product 3'}, new List<Decimal>{9.99, 19.99, 29.99}, new List<Integer>{10, 5, 8});
obj.display();

List<SuperMarket> demo = new List<SuperMarket>();
demo.add(new SuperMarket(new List<Integer>{1, 2, 3}, new List<String>{'Product 1', 'Product 2', 'Product 3'}, new List<Decimal>{9.99, 19.99, 59.99}, new List<Integer>{10, 5, 8}));
demo.add(new SuperMarket(new List<Integer>{1, 2, 3}, new List<String>{'Product 1', 'Product 2', 'Product 3'}, new List<Decimal>{9.94, 17.99, 27.99}, new List<Integer>{25, 35, 58}));
demo.add(new SuperMarket(new List<Integer>{1, 2, 3}, new List<String>{'Product 1', 'Product 2', 'Product 3'}, new List<Decimal>{9.97, 12.99, 69.99}, new List<Integer>{50, 65, 78}));

for(SuperMarket singleProduct : demo) {
     singleProduct.display();
}
*/