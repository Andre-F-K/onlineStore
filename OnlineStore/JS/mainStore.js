        // JavaScript to handle adding products to the cart
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        const selectedProductsInput = document.getElementById('selected-products');

        addToCartButtons.forEach(button => {
            button.addEventListener('click', function () {
                const productId = this.getAttribute('data-product-id');
                if (!selectedProductsInput.value.includes(productId)) {
                    selectedProductsInput.value += productId + ',';
                }
            });
        });