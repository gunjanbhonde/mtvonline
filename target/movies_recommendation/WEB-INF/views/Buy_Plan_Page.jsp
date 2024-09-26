<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Plan</title>

<!-- fot website fevicon image -->
<link rel="icon" type="image/x-icon"
	href="/movies_recommendation/resources/images/website-feviicon.png" />
  
 
     <!-- --------------google font-poppins-link------- -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
  
  <style type="text/css">
   /* Resetting some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #0a0a0a;
            color: #fff;
        }

        header {
            background-color: #1a1a1a;
            color: #7433f5;
            padding: 30px 0;
            text-align: center;
            border-bottom: 3px solid #7433f5;
        }

        h1 {
            margin-bottom: 10px;
            font-size: 3rem;
            letter-spacing: 2px;
            font-weight: bold;
        }

        .container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 30px;
            background-color: #1c1c1c;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.6);
        }

        .plans {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .plan {
            background-color: #282828;
            border: 2px solid #444;
            padding: 30px;
            width: 30%;
            margin: 15px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.6);
            transition: transform 0.3s ease-in-out;
        }

        .plan:hover {
            transform: translateY(-10px);
            border-color: #7433f5;
        }

        .plan h2 {
            margin-bottom: 20px;
            color:#7433f5;
            font-size: 2rem;
            font-weight: bold;
        }

        .plan p {
            margin-bottom: 20px;
            font-size: 1.4rem;
            color: #fff;
            font-weight: 500;
        }

        .plan button {
            background-color: #7433f5;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1.2rem;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .plan button:hover {
            background-color: #7433f5;
        }

        /* Payment Section */
        .payment-section {
            margin-top: 40px;
            padding: 30px;
            background-color: #222;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
        }

        .payment-section h3 {
            margin-bottom: 25px;
            color: #7433f5;
            font-size: 2.5rem;
            font-weight: bold;
        }

        .payment-section label {
            display: block;
            margin-bottom: 10px;
            font-size: 1.3rem;
            font-weight: 500;
        }

        .payment-section input,
        .payment-section select,
        .payment-section button {
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            background-color: #333;
            color: #fff;
            border: 2px solid #444;
            border-radius: 8px;
            font-size: 1.2rem;
        }

        .payment-section input::placeholder,
        .payment-section select {
            color: #bbb;
        }

        .payment-section select {
            background-color: #333;
            appearance: none;
            cursor: pointer;
        }

        .payment-section button {
            background-color: #7433f5;
            color: white;
            border: none;
            font-size: 1.3rem;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .payment-section button:hover {
            background-color: #7433f5;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .plans {
                flex-direction: column;
                align-items: center;
            }

            .plan {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            header {
                font-size: 20px;
            }

            .plan button,
            .payment-section button {
                font-size: 1rem;
            }
        }
  
  
  </style>
  
  
</head>
<body>
 <header>
        <h1>Buy mtvonline Plans</h1>
    </header>

    <div class="container">
        <section class="plans">
            <div class="plan">
                <h2>1 Month Plan</h2>
                <p>Price: ₹ 149</p>
                <button>Buy Now</button>
            </div>
            <div class="plan">
                <h2>6 Months Plan</h2>
                <p>Price: ₹ 499</p>
                <button>Buy Now</button>
            </div>
            <div class="plan">
                <h2>1 Year Plan</h2>
                <p>Price: ₹ 999</p>
                <button>Buy Now</button>
            </div>
        </section>

        <!-- Payment Section -->
        <section class="payment-section">
            <h3>Payment Gateway</h3>
            <form>
                <label for="payment-method">Select Payment Method:</label>
                <select id="payment-method" required>
                    <option value="" disabled selected>Select Payment Method</option>
                    <option value="card">Credit/Debit Card</option>
                    <option value="upi">UPI</option>
                    <option value="netbanking">Net Banking</option>
                </select>

                <!-- Card Payment Fields -->
                <div id="card-fields" style="display: none;">
                    <input type="text" placeholder="Cardholder Name" required>
                    <input type="text" placeholder="Card Number" required>
                    <input type="text" placeholder="Expiration Date (MM/YY)" required>
                    <input type="text" placeholder="CVV" required>
                </div>

                <!-- UPI Payment Fields -->
                <div id="upi-fields" style="display: none;">
                    <input type="text" placeholder="UPI ID" required>
                </div>

                <!-- Net Banking Fields -->
                <div id="netbanking-fields" style="display: none;">
                    <input type="text" placeholder="Bank Name" required>
                    <input type="text" placeholder="Account Number" required>
                </div>

                <button type="submit">Pay Now</button>
            </form>
        </section>
    </div>

    <script>
        const paymentMethod = document.getElementById('payment-method');
        const cardFields = document.getElementById('card-fields');
        const upiFields = document.getElementById('upi-fields');
        const netBankingFields = document.getElementById('netbanking-fields');

        paymentMethod.addEventListener('change', function () {
            cardFields.style.display = 'none';
            upiFields.style.display = 'none';
            netBankingFields.style.display = 'none';

            if (this.value === 'card') {
                cardFields.style.display = 'block';
            } else if (this.value === 'upi') {
                upiFields.style.display = 'block';
            } else if (this.value === 'netbanking') {
                netBankingFields.style.display = 'block';
            }
        });
    </script>

</body>
</html>