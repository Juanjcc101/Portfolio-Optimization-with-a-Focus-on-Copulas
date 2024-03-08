import numpy as np
import pandas as pd

# Datos históricos de rendimientos de activos financieros
data = pd.read_csv('Activos.csv')

# Suponemos que tienes dos columnas 'MKt_RF' y 'SMB' en tu archivo CSV
returns = data[['MKt_RF', 'SMB']]

# Rendimientos esperados de los dos activos
expected_returns = [1.922521, 0.08802022]

# Matriz de covarianza de los dos activos
cov_matrix = returns.cov()

# Suponemos que ya has calculado los pesos óptimos para la cartera (esto se hace con técnicas de optimización).
weights = np.array([0.5, 0.5])  # Ejemplo de pesos

# Calcular el rendimiento esperado y la volatilidad de la cartera
portfolio_return = np.sum(expected_returns * weights)
portfolio_std_dev = np.sqrt(np.dot(weights.T, np.dot(cov_matrix, weights)))

print("Rendimiento esperado de la cartera:", portfolio_return)
print("Volatilidad de la cartera:", portfolio_std_dev)

