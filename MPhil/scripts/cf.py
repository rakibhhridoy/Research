import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import math


df = pd.read_csv("../data/data.csv")
bg = pd.read_csv("../data/bg.csv")

background_values = pd.DataFrame(data={
    "Cd":[0.3],
    "Sr":[216],
    "Fe":[30890],
    "Hg":[1.4],
    "Co":[19],
    "Ni":[68],
    "Cu":[45],
    "Mn":[93],
    "Cr":[90],
    "Pb":[20],
    "As":[13],
})


cf_CdW = []
cf_CdR = []

cf_SrW = []
cf_SrR = []

cf_FeW = []
cf_FeR = []

cf_HgW = []
cf_HgR = []

cf_CoW = []
cf_CoR = []

cf_NiW = []
cf_NiR = []

cf_CuW = []
cf_CuR = []

cf_MnW = []
cf_MnR = []

cf_CrW = []
cf_CrR = []

cf_PbW = []
cf_PbR = []

cf_AsW = []
cf_AsR = []


i = 0
while i < len(df["PbR"]):
    cf_Cdr = df["CdR"][i]/  bg["Cd"][1]
    cf_CdR.append(cf_Cdr)
    
    cf_Cdw = df["CdW"][i]/  bg["Cd"][0]
    cf_CdW.append(cf_Cdw)
    
    
    cf_Srw = df["SrW"][i]/  bg["Sr"][0]
    cf_SrW.append(cf_Srw)
    
    cf_Srr = df["SrR"][i]/  bg["Sr"][1]
    cf_SrR.append(cf_Srr)
    
    
    cf_Few = df["FeW"][i]/  bg["Fe"][0]
    cf_FeW.append(cf_Few)
    
    cf_Fer = df["FeR"][i]/  bg["Fe"][1]
    cf_FeR.append(cf_Fer)
    
    
    cf_Hgr = df["HgR"][i]/  bg["Hg"][1]
    cf_HgR.append(cf_Hgr)
    
    cf_Hgw = df["HgW"][i]/  bg["Hg"][0]
    cf_HgW.append(cf_Hgw)
    
    
    cf_Cor = df["CoR"][i]/  bg["Co"][1]
    cf_CoR.append(cf_Cor)
    
    cf_Cow = df["CoW"][i]/  bg["Co"][0]
    cf_CoW.append(cf_Cow)
    
    
    cf_Nir = df["NiR"][i]/  bg["Ni"][1]
    cf_NiR.append(cf_Nir)
    
    cf_Niw = df["NiW"][i]/  bg["Ni"][0]
    cf_NiW.append(cf_Niw)
    
    
    cf_Mnr = df["MnR"][i]/  bg["Mn"][1]
    cf_MnR.append(cf_Mnr)
    
    cf_Mnw = df["MnW"][i]/  bg["Mn"][0]
    cf_MnW.append(cf_Mnw)
    
    
    cf_Cur = df["CuR"][i]/  bg["Cu"][1]
    cf_CuR.append(cf_Cur)
    
    cf_Cuw = df["CuW"][i]/  bg["Cu"][0]
    cf_CuW.append(cf_Cuw)
    
    
    cf_Crr = df["CrR"][i]/  bg["Cr"][1]
    cf_CrR.append(cf_Crr)    
    
    cf_Crw = df["CrW"][i]/  bg["Cr"][0]
    cf_CrW.append(cf_Crw)    
    
    
    cf_pbr = df["PbR"][i]/  bg["Pb"][1]
    cf_PbR.append(cf_pbr)
    
    cf_pbw = df["PbW"][i]/  bg["Pb"][0]
    cf_PbW.append(cf_pbw)
    
    
    cf_Asr = df["AsR"][i]/  bg["As"][1]
    cf_AsR.append(cf_Asr)
    
    cf_Asw = df["AsW"][i]/  bg["As"][0]
    cf_AsW.append(cf_Asw)
    
    
    
    
    i += 1
    
cf = pd.DataFrame({
    "CdW": cf_CdW,
    "CdR": cf_CdR,
    "SrW": cf_SrW,
    "SrR": cf_SrR,
    "FeW": cf_FeW,
    "FeR": cf_FeR,
    "HgW": cf_HgW,
    "HgR": cf_HgR,
    "CoW": cf_CoW,
    "CoR": cf_CoR,
    "NiW": cf_NiW,
    "NiR": cf_NiR,
    "MnW": cf_MnW,
    "MnR": cf_MnR,
    "CuW": cf_CuW,
    "CuR": cf_CuR,
    "CrW": cf_CrW,
    "CrR": cf_CrR,
    "PbW": cf_PbW,
    "PbR": cf_PbR,
    "AsW": cf_AsW,
    "AsR": cf_AsR
    
})

cfW = cf[["CdW", "SrW","FeW","HgW","CoW","NiW","MnW", "CuW","CrW","PbW","AsW"]]
cfR = cf[["CdR", "SrR","FeR","HgR","CoR","NiR","MnR", "CuR","CrR","PbR","AsR"]]

cdW = cfW.sum(axis=1)
cdR = cfR.sum(axis=1)

m_cdW = cfW.mean(axis=1)
m_cdR = cfR.mean(axis=1)

cf["cdW"], cf["cdR"], cf["m_cdW"], cf["m_cdR"] = cdW, cdR, m_cdW, m_cdR

cfW["cd"], cfW["m_cd"] = cdW, m_cdW
cfR["cd"], cfR["m_cd"] = cdR, m_cdR

cf.to_csv("data/pollutionIndices/cf.csv")
cfW.to_csv("data/pollutionIndices/cfW.csv")
cfR.to_csv("data/pollutionIndices/cfR.csv")