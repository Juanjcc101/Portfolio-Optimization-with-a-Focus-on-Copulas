# Portfolio Optimization with a Focus on Copulas
Juan Jose Castrillon, Felipe Gomez\\
The project covers a comprehensive methodology, starting from selecting the portfolio and assets to optimize, deciding whether to maximize performance or minimize risk (or both), and then searching for the copula that best represents the assets' dependency. The chosen copula is used for simulations, followed by the implementation of Markowitz portfolio optimization to determine the optimal asset weights for the objective function, incorporating constraints related to weights and non-negativity.

Data for the project was derived from a portfolio by Kenneth R. French, focusing on the assets Mkt-Rf and SMB, with a sample size of 1000 data points representing returns. The project explored Gaussian copulas, which represent dependency structures for multivariate normal distributions, to model the relationships between variables.

Objective functions were defined to either maximize portfolio return or minimize risk, with the combined objective function being a linear blend of the two, weighted by parameters α and β to balance the importance of return and risk in the portfolio. The results showcased the expected returns for each asset and the optimized weights calculated for the portfolio's expected return and risk.

The project concludes that portfolio optimization with a focus on copulas allows for more precise inventory management by capturing the more realistic, non-linear, and asymmetric relationships between assets, aiding in informed financial decision-making and risk mitigation.
