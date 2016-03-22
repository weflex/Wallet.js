- [Preface](#sec-1)
  - [Keyword Conventions](#sec-1-1)
  - [Typographic Conventions](#sec-1-2)
- [Payment Process](#sec-2)
  - [Payment Roles](#sec-2-1)
  - [Definition](#sec-2-2)
  - [Payment Ticket](#sec-2-3)
    - [Identifing Ticket](#sec-2-3-1)
- [Refund](#sec-3)
- [Payment Strategies](#sec-4)
  - [Strategy Requirements](#sec-4-1)
  - [Initializing a Strategy (Using Ping++ As Example)](#sec-4-2)
- [Working with Internet Open Trading Protocol (IOTP)](#sec-5)

Wallet.js: General Purpose Payment Bridge

# Preface<a id="sec-1" name="sec-1"></a>

## Keyword Conventions<a id="sec-1-1" name="sec-1-1"></a>

The key words &ldquo;MUST&rdquo;, &ldquo;MUST NOT&rdquo;, &ldquo;REQUIRED&rdquo;, &ldquo;SHALL&rdquo;, &ldquo;SHALL NOT&rdquo;, &ldquo;SHOULD&rdquo;,&ldquo;SHOULD NOT&rdquo;, &ldquo;RECOMMENDED&rdquo;, &ldquo;MAY&rdquo;, and &ldquo;OPTIONAL&rdquo; in this document are to be interpreted as described in [RFC 2119](http://tools.ietf.org/html/rfc2119).

## Typographic Conventions<a id="sec-1-2" name="sec-1-2"></a>

In this document, we use the following typographic conventions:

-   *Italic*

Used for URLs, command names, MIME types, new terms where they are defined, andemphasis

-   `Constant width`

Used for computer output, functions, code, and any literal text

# Payment Process<a id="sec-2" name="sec-2"></a>

## Payment Roles<a id="sec-2-1" name="sec-2-1"></a>

In a mordern Online Payment Process, there&rsquo;re three roles: *Customer*, *PaymentHandler* and *Service Provider*. Payment Handlers are those who provide and sellproducts and services. Customers are those purchasing goods or services fromMerchants. Sometinmes Payment Hanlders are also refered as *Merchants*. Finally,Service Providers are banks or companies providing Online Payment Service.

## Definition<a id="sec-2-2" name="sec-2-2"></a>

A general image of a Online Payment could be:

1.  Customer submits a Request Form to Payment Handler; This Form
    -   MUST specify which product to purchase and quantity to purchase;
    -   MAY specify from Customer&rsquo;s identity;

2.  With these information, Payment Handler then forges a Payment Ticket objectand send it to Service Provider; While forging this Ticket, Payment Hanlder
    -   MUST specify Payment Fee; Here Payment Fee is defined as a total amount ofmoney Customer pays Merchant for the products.
    -   MAY specify a *Callback URI*. Through this URI Service Provider couldnotify Payment Handler once the Payment Process is closed;
    
    Service Provider then send this Payment Ticket back to Customer forconfirmation;

3.  Once Customer confirms this Payment Ticket, Service Provider process thisTicket, deduct Payment Fee from Customer&rsquo;s account and then MAY send a*success* request to Callback URI; Or Customer MAY reject this PaymentTicket, in which case Payment Fee is not deducted and a *failure* request ismade to Callback URI;

4.  Payment Handler MAY inquire Service Provide for progress and status of aspecific Payment Ticket;

5.  While Service Provider is processing a Payment Ticket, errors MAY occur. Atypical error is that Customer&rsquo;s account balance is insufficient to deductPaymetn Fee from. Payment Handler SHOULD be responsible handling these errorsituations while an *error* request to Callback URI is OPTIONAL.

## Payment Ticket<a id="sec-2-3" name="sec-2-3"></a>

### Identifing Ticket<a id="sec-2-3-1" name="sec-2-3-1"></a>

# Refund<a id="sec-3" name="sec-3"></a>

# Payment Strategies<a id="sec-4" name="sec-4"></a>

## Strategy Requirements<a id="sec-4-1" name="sec-4-1"></a>

## Initializing a Strategy (Using Ping++ As Example)<a id="sec-4-2" name="sec-4-2"></a>

# Working with Internet Open Trading Protocol (IOTP)<a id="sec-5" name="sec-5"></a>
