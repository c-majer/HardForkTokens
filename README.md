---
Title: "Hard Fork Tokens"
author: "Camillo Giuseppe Majerczyk"
date: "10/04/2021"
output: html_document
---

<hr align="center" size="4px" width="95%">

### The aim of the app
Hard Fork Tokens App wants to be an introduction to the concept of *"Ethereum blockchain"*. <br> When talking about **Ethereum**, people commonly think about a cryptocurrency. Actually, Ethereum is much more. <br>
The main point is to provide an idea of the potential applications of the smart contracts. Hence, the app also introduce four tokens built with different purposes, some of them now developed in independent blockchains. <br>
These concepts are strictly related to **economics** and they have a huge impact on the world’s stock exchanges. For example, the Securities and Exchange Commission (SEC) allowed Coinbase, a fully regulated and licensed cryptocurrency exchange, to list shares on NASDAQ starting from April 14th 2021, with an Initial Public Offering (IPO) of around $100 billion. <br>
We often hear that the blockchain market is growing fast. But *how* fast? To answer this question, Hard Fork Tokens App also gives the possibility to check the trends. <br>

<hr align="center" size="4px" width="90%">

### Panel section
This section compares the technical characteristics of four different **blockchain projects**. <br>
The descriptions are short, providing the main focus of the platforms. <br> It is also possible to access the **official websites** from each tab. Just open the description and click on the link, that is the last line. <br>
Every description also include the **two main indices** on the cryptocurrency market:

* **ATH** (All Time High); which is the higher value ever reached on the market.
* **Market Cap** (Market Capitalization); which is the total market value of all outstanding shares.

Finally, a bold text suggests the **symbol** to input in the next section, in order to get the trend chart. <br>

<hr align="center" size="4px" width="90%">

### Trends section
This section allows to check the market trends in a specific date range. <br>
The app gets the time series data from **Yahoo Finance**. Therefore, the symbol used must correspond to the ones used on Yahoo Finance. Otherwise it occurs an error.

To plot the trend chart, it is sufficient to input the **correct symbol** in the symbol-box. <br>
Then select the **start and end date** from the calendars below. And wait for the chart to load. <br>
The output is shown on the right. It will be a **bar chart**, showing the dates on the lower axis, the values on the vertical axis and the date range above the graph. <br>

_PLEASE NOTE_

If the chart doesn’t update after you changed the date range, try to re-write the symbol with the calendar already set. <br>
Also, the chart may not update due to the date range selected. To know more, read below.

<hr align="center" size="4px" width="90%">

### Date ranges
The app uses the `getSymbols()`  function to get the time series data from Yahoo Finance. <br>
The default request with `getSymbols()` for Yahoo starts at 2007-01-01.

_IMPORTANT_

When choosing the date range, please **check the launch date** of the cryptocurrency / token. <br>
For example, KNC-USD trend can be uploaded starting from September 17th 2018, since this is the date Kyber Network has been launched in the market. <br>
If you go out of the existing calendar, it won't display an error but the chart won’t upload.

Actually, the missing values in the valid time series  will eventually be removed when plotting the trend. <br>
The trends are still reliable. But the *“existing date range”* is anyway a **compulsory feature**.

Here we provide the starting dates of the tokens mentioned in the app: 

Ethereum Classic  &#8594;  July 18th 2016  <br>
Kyber Network  &#8594;  September 17th 2018  <br>
Binance  &#8594;  July 24th 2017  <br>
Chainlink  &#8594;  September 18th 2017  <br>

<hr align="center" size="4px" width="90%">
