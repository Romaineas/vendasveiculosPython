#!/usr/bin/env python
# coding: utf-8

# # análise exploratória de dados 
# # limpeza de dados
# # Análise preditiva e descritiva
# 
# dados tabela vendas de veiculos concessionaria 2020/2021
# 

# In[1]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

import warnings
warnings.filterwarnings("ignore") 

import locale


# In[2]:


df = pd.read_excel('dados.xlsx')


# In[3]:


pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)


# In[4]:


df


# In[5]:


df.info()


# In[12]:


df.groupby(['VALOR']).size()


# In[6]:


df.loc[df['VALOR'] == 'SEM VALOR'] 


# In[7]:


# subistituir a palavra SEM VALOR  pelo valor ZERO
df.loc[(df['VALOR'] == 'SEM VALOR'), 'VALOR'] = 0


# In[8]:


# verificamos os valores medianos da coluna modelo para substituir o valor ZERO

df.loc[df['MODELO'] == 'PASSAT'].median() 


# In[9]:


# atualizamos o valor conforme a mediana daquele modelo

df.loc[(df['VALOR'] == 200000), 'VALOR'] = 0


# In[10]:


# Comando utilizado para avaliar se alguma informação é nula

df.isnull().sum()


# In[11]:


# A iremos tratar os valores missing, ou seja, os regitros que não possuem valores.
# Uma forma bem mais simples de tratamento de dados que é utilizado direto a função FILLNA preenchendo os valores em branco
# valor mediano

df['KM-LITRO'] = df['KM-LITRO'].fillna((df['KM-LITRO'].median()))


# In[12]:


# Observe agora que nãon temos mais nenhum valor em branco
df.isnull().sum()


# In[13]:


df.info()


# In[14]:


# Avaliação dos outliers das colunas que não são numericas
# valores discrepantes que estão acima ou abaixo dos outros valores

#carregando as listas as variáveis que são do tipo INT64 E FLOAT64
    
variaveis_numericas = []
for i in df.columns[0:48].tolist():
        if df.dtypes[i] == 'int64' or df.dtypes[i] == 'float64':            
            print(i, ':' , df.dtypes[i]) 
            variaveis_numericas.append(i)


# In[15]:


# Definir o tamanho da tela para exibição dos gáficos
import seaborn as sns


plt.rcParams["figure.figsize"] = [12.00, 14.00]
plt.rcParams["figure.autolayout"] = True

# Aqui definimos em quantas linhas e colunas queremos exibir os gráficos
f, axes = plt.subplots(3, 2) #3 linhas e 2 colunas

linha = 0
coluna = 0

for i in variaveis_numericas:
    sns.boxplot(data = df, y=i, ax=axes[linha][coluna])
    coluna += 1
    if coluna == 2:
        linha += 1
        coluna = 0            

plt.show()
    


#  **Análise preditiva**

# 1-agora tratamos a variávek dat-venda
# 
# 2-tratamentos para transformar o campo para o tipo date e tambem incluimos novas variáveis a partir da data
# 
#  3- vamos tambem incluir as variaveis separadas, ANO, MÊS, DIA
#  
# 4- vamos incluir a variavel dia_semana e avaliarmos qual dia da semana temos mais vendas.
# 
# 
# 

# In[20]:


# Também podemos observar as vendas por ano
df.DATA_VENDA.value_counts().plot(kind='bar', title='Vendas Por Ano',color = ['#1F77B4', '#FF7F0E']);

