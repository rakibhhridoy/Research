import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import math


df = pd.read_csv("../data/data.csv")
bg = pd.read_csv("data/bg.csv")

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


def igeo(df, bg):
    igeo_CdW = []
    igeo_CdR = []

    igeo_SrW = []
    igeo_SrR = []

    igeo_FeW = []
    igeo_FeR = []

    igeo_HgW = []
    igeo_HgR = []

    igeo_CoW = []
    igeo_CoR = []

    igeo_NiW = []
    igeo_NiR = []

    igeo_CuW = []
    igeo_CuR = []

    igeo_MnW = []
    igeo_MnR = []

    igeo_CrW = []
    igeo_CrR = []

    igeo_PbW = []
    igeo_PbR = []

    igeo_AsW = []
    igeo_AsR = []


    i = 0
    while i < len(df["PbR"]):
        ig_Cdr = math.log2(df["CdR"][i]/ (1.5 * bg["Cd"][1]))
        igeo_CdR.append(ig_Cdr)

        ig_Cdw = math.log2(df["CdW"][i]/ (1.5 * bg["Cd"][0]))
        igeo_CdW.append(ig_Cdw)


        ig_Srw = math.log2(df["SrW"][i]/ (1.5 * bg["Sr"][0]))
        igeo_SrW.append(ig_Srw)

        ig_Srr = math.log2(df["SrR"][i]/ (1.5 * bg["Sr"][1]))
        igeo_SrR.append(ig_Srr)


        ig_Few = math.log2(df["FeW"][i]/ (1.5 * bg["Fe"][0]))
        igeo_FeW.append(ig_Few)

        ig_Fer = math.log2(df["FeR"][i]/ (1.5 * bg["Fe"][1]))
        igeo_FeR.append(ig_Fer)


        ig_Hgr = math.log2(df["HgR"][i]/ (1.5 * bg["Hg"][1]))
        igeo_HgR.append(ig_Hgr)

        ig_Hgw = math.log2(df["HgW"][i]/ (1.5 * bg["Hg"][0]))
        igeo_HgW.append(ig_Hgw)


        ig_Cor = math.log2(df["CoR"][i]/ (1.5 * bg["Co"][1]))
        igeo_CoR.append(ig_Cor)

        ig_Cow = math.log2(df["CoW"][i]/ (1.5 * bg["Co"][0]))
        igeo_CoW.append(ig_Cow)


        ig_Nir = math.log2(df["NiR"][i]/ (1.5 * bg["Ni"][1]))
        igeo_NiR.append(ig_Nir)

        ig_Niw = math.log2(df["NiW"][i]/ (1.5 * bg["Ni"][0]))
        igeo_NiW.append(ig_Niw)


        ig_Mnr = math.log2(df["MnR"][i]/ (1.5 * bg["Mn"][1]))
        igeo_MnR.append(ig_Mnr)

        ig_Mnw = math.log2(df["MnW"][i]/ (1.5 * bg["Mn"][0]))
        igeo_MnW.append(ig_Mnw)


        ig_Cur = math.log2(df["CuR"][i]/ (1.5 * bg["Cu"][1]))
        igeo_CuR.append(ig_Cur)

        ig_Cuw = math.log2(df["CuW"][i]/ (1.5 * bg["Cu"][0]))
        igeo_CuW.append(ig_Cuw)


        ig_Crr = math.log2(df["CrR"][i]/ (1.5 * bg["Cr"][1]))
        igeo_CrR.append(ig_Crr)    

        ig_Crw = math.log2(df["CrW"][i]/ (1.5 * bg["Cr"][0]))
        igeo_CrW.append(ig_Crw)    


        ig_pbr = math.log2(df["PbR"][i]/ (1.5 * bg["Pb"][1]))
        igeo_PbR.append(ig_pbr)

        ig_pbw = math.log2(df["PbW"][i]/ (1.5 * bg["Pb"][0]))
        igeo_PbW.append(ig_pbw)


        ig_Asr = math.log2(df["AsR"][i]/ (1.5 * bg["As"][1]))
        igeo_AsR.append(ig_Asr)

        ig_Asw = math.log2(df["AsW"][i]/ (1.5 * bg["As"][0]))
        igeo_AsW.append(ig_Asw)




        i += 1




    igeo = pd.DataFrame({
        "CdW": igeo_CdW,
        "CdR": igeo_CdR,
        "SrW": igeo_SrW,
        "SrR": igeo_SrR,
        "FeW": igeo_FeW,
        "FeR": igeo_FeR,
        "HgW": igeo_HgW,
        "HgR": igeo_HgR,
        "CoW": igeo_CoW,
        "CoR": igeo_CoR,
        "NiW": igeo_NiW,
        "NiR": igeo_NiR,
        "MnW": igeo_MnW,
        "MnR": igeo_MnR,
        "CuW": igeo_CuW,
        "CuR": igeo_CuR,
        "CrW": igeo_CrW,
        "CrR": igeo_CrR,
        "PbW": igeo_PbW,
        "PbR": igeo_PbR,
        "AsW": igeo_AsW,
        "AsR": igeo_AsR

    })

    igeoW = igeo[["CdW", "SrW","FeW","HgW","CoW","NiW","MnW", "CuW","CrW","PbW","AsW"]]
    igeoR = igeo[["CdR", "SrR","FeR","HgR","CoR","NiR","MnR", "CuR","CrR","PbR","AsR"]]
    
    
    return igeo, igeoW, igeoR

igeo, igeoW, igeoR = igeo(df,bg)
igeoS, igeoWS, igeoRS = igeo(df,background_values)



igeo.to_csv("data/pollutionIndices/igeo.csv")
igeoW.to_csv("data/pollutionIndices/igeoW.csv")
igeoR.to_csv("data/pollutionIndices/igeoR.csv")
igeoS.to_csv("data/pollutionIndices/igeoS.csv")
igeoWS.to_csv("data/pollutionIndices/igeoWS.csv")
igeoRS.to_csv("data/pollutionIndices/igeoRS.csv")

