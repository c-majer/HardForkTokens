###### HARD FORK TOKENS ######

library(shiny)
library(shinythemes)
install.packages("tidyquant")
library(tidyquant)
install.packages("dygraphs")
library(dygraphs)

### UI ###

ui <- fluidPage( theme = shinytheme("cyborg"),
    
    ## Logo Header
    fluidRow(
        column(8, offset = 2, align = "center",
               img(src="HardForkTokensLogo.png", width=400)
               )
    ),
    
    ## testo introduttivo
    fluidRow(
        column(10, offset = 1,
               h4("The Ethereum Ecosystem"),
               p("In 2014, Vitalik Buterin launched Ethereum, an open source platform that enables decentralized apps, or 'DApp'.
                 Buterin's main purpose was to create a new blockchain, because of the lack of flexibility in the Bitcoin protocol."),
               p("Ethereum attracted developers, businesses and entrepreneurs, and it generated a growing market.
                 A key acronym in Ethereum is 'ERC', that stands for Ethereum Request for Comment.
                 ERCs are technical documents which provide standards to easy the integration between applications and smart contracts.
                 The ERC-20 is a simple format for Ethereum based tokens."),
               p("Unlike the Ethereum (ETH) , which is a cryptocurrency, the ERC-20 tokens are not kept in a wallet.
                 The tokens exist only in the smart contracts, which are structuralized like independent databases.
                 There is another important point to consider when analyzing this market.
                 While 'miners' can earn cryptocurrency with the Ethereum mining, instead the number of tokens is fixed in the smart contracts."),
               br(),
               hr(),
               )
    ),
    
    ## Testo intro alle info
    fluidRow(
        column(10, offset = 1,
               h4("Let's deepen some ERC-20 tokens"),
               p("ERCs are application-level standards for Ethereum and can include token standards, name registries, library/package formats, and more.
                 There are a number of ERC standards that serve multiple purposes.
                 They can be mixed to create a multi-functional tokens."),
               p("Here are some of the most known projects and tokens developed starting from the Ethereum blockchain."),
               br(),
               br(),
        )
    ),
    
    ## Parte con Info tabs
    fluidRow(
        column( width= 10,offset= 1,      
                navlistPanel(id="tokeninfo",
                             tabPanel("Ethereum Classic",
                                      p("Ethereum Classic is a decentralized platform that runs smart contracts exactly as programmed
                                        without any possibility of downtime, censorship, fraud or third party interference.
                                        It is a continuation of the original Ethereum blockchain, and maintains the original history of the Ethereum Network."),
                                      p("Ethereum Classic provides a decentralized Turing-complete virtual machine,
                                        the Ethereum Virtual Machine (EVM), which can execute scripts using an international network of public nodes."),
                                      p("Ethereum Classic has an all-time-high of $42.79 and a current Market Capitalization of about $1,760,610,436."),
                                      h6("Check the Ethereum Classic trend in the chart below: input the symbol ETC-USD."),
                                      tags$a(href="https://ethereumclassic.org/", "Ethereum Classic official website", target="_blank")),
                             tabPanel("Chainlink",
                                      p("Chainlink is a protocol that aims to connect the blockchain ecosystem to off-chain resources, like banks, API and big data feeds.
                                        For this purpose, Chainlink uses the middleware Oracle, that enables communication between multiple softwares applications.
                                        LINK is the cryptocurrency that powers the Chainlink protocol."),
                                      p("The LINK Network can be defined as a fully decentralized Oracle network that provides smart contracts for DeFi
                                        (Decentralized Finance) functionalities. This network is build on Ethereum and ERC-20 tokens that enable a secure,
                                        autonomous and decentralized infrastructure."),
                                      p("Chainlink has an all-time-high of  $34.76 and a current Market Capitalization of about $13.227.388.978 USD."),
                                      h6("Check the LINK cryptocurrency trend in the chart below: input the symbol LINK-USD."),
                                      tags$a(href="https://chain.link/", "Chainlink official website", target="_blank")),
                             tabPanel("Binance Coin",
                                      p("Binance started as an Ethereum-based token with the ERC-20 standard, and eventually moved to its own custom blockchain called
                                        Binance Chain. Unlike Ethereum, however, Binance Chain does not support smart contracts."),
                                      p("The Binance Exchange can be used to trade purely in cryptocurrency. It is the largest cryptocurrency exchange in the world,
                                        facilitating more than 1.4 million transactions per second."),
                                      p("Binance Coin is the cryptocurrency that can be used to trade and pay fees on the Binance Exchange.
                                        Also, these coins runs on the Ethereum blockchain with ERC-20 standard, and has a strict maximum limit of 200 million BNB tokens."),
                                      p("Binance Coin has an all-time-high of  $346.00 and a current Market Capitalization of about $ 52.715.271.877 USD."),
                                      h6("Check the Binance Coin trend in the chart below: input the symbol BNB-USD."),
                                      tags$a(href="https://www.binance.com/en", "Binance official website", target="_blank")),
                             tabPanel("Kyber Network",
                                      p("Kyber Network is a new system protocol which allows the exchange and conversion of digital assets.
                                        It consists of a set of smart contracts that can be implemented on any smart contract-capable blockchain."),
                                      p("Kyber Network provides rich payment APIs and a new contract wallet that allows anyone to seamlessly receive payments from any token.
                                        Its broadly integrated protocol offers an on-chain, decentralized solution to DeFi's liquidity challenges and provides ERC-20 tokens
                                        with ecosystem-wide utility."),
                                      p("Binance Coin has an all-time-high of  $5.80 and a current Market Capitalization of about  $ 676.72M USD."),
                                      h6("Check the Binance Coin trend in the chart below: input the symbol KNC-USD."),
                                      tags$a(href="https://kyber.network/", "Kyber Network official website", target="_blank")),
                             widths = c(4, 8)
                ),
                hr(),
        )
    ),
    
    fluidRow(
        column(10, offset = 1,
               h4("Tokens' trends"),
               p("Ethereum's price is determined by market supply and demand for the cryptocurrency.
                 Similarly, the economic value of every token depends on the number of users and investments."),
               p("Therefore, the trends represent the progress on the market also in terms of technological improvement and audience size."),
               tags$i("Check the Markdown documentation for a better use"),
               br(),
               br(),
        )
    ),
    
    ## Parte centrale con grafici
    fluidRow(
        column( width = 10, offset=1,
        sidebarLayout(
            sidebarPanel(
                
                 helpText("Type any Yahoo Finance symbol to get the trend chart"),
                 textInput("symb", "Symbol", "ETH-USD"),
                 
                 dateRangeInput("dates",
                                "Date range",
                                start = "2013-01-01",
                                end = as.character(Sys.Date()))
                 ),
            
                 mainPanel(
                    plotOutput("trendToken")
                )
            ),
        hr()
        )
    ),
    
    ## Footer
    fluidRow(
        column( width=2, offset= 5,
            actionLink(inputId= "githublink", label="Go to GitHub", icon=icon("github", "fa-2x"), onclick ="window.open('https://github.com/c-majer/HardForkTokens', '_blank')"),
            br(), br(), br()
        )
    )
)


### SERVER ###

server <- function(input, output) {
    
    dataInput <- reactive({
        getSymbols(input$symb, src = "yahoo",
                   from = input$dates[1],
                   to = input$dates[2],
                   missing= "remove",
                   auto.assign = FALSE)
    })
    
    output$trendToken <- renderPlot({
        chartSeries(dataInput(), theme = chartTheme("black"), type = "bars", TA = NULL)
    })
    
}

### RUN THE APP ###

shinyApp(ui = ui, server = server)
