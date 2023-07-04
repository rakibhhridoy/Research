import numpy as np
import pandas as pd


param_adult= {
    "IR" : 2.5,
    "EF": 365,
    "ED": 70,
    "BW": 70,
    "AT": 365 * 70,
    "SA": 18000,
    "ET": 0.58,
    "CF": 10**-3,
    'Kp': {
        "Mn": 0.001,
        "Cr": 0.002,
        "Ni": 0.0002,
        "Cu": 0.001,
        "Zn": 0.0006,
        "As": 0.001,
        "Cd": 0.001,
        "Hg": 0.001,
        "Pb": 0.0001
    },
    'RfDing': {
        "Mn": 0.024,
        "Cr": 0.003,
        "Ni": 0.025,
        "Cu": 0.04,
        "Zn": 0.3,
        "As": 0.0003,
        "Cd": 0.0005,
        "Hg": 0.00016,
        "Pb": 0.0035
    },
    "RfDderm": {
        "Mn": 0.00096,
        "Cr": 0.0195,
        "Ni": 0.0054,
        "Cu": 0.04,
        "Zn": 0.06,
        "As": 0.0003,
        "Cd": 0.000025,
        "Hg": 0.00016,
        "Pb": 0.042
        
    },
    "CSFing": {
        "Cd": 0.38,
        "Cr": 0.5,
        "As": 1.5,
        "Pb": 0.0085,
        "Ni": 1.7
    },
    "CSFderm": {
        "Cd": 0.38,
        "Cr": 0.5,
        "As": 1.5,
        "Pb": 0.0085,
        "Ni": 1.7
    }
    

}

param_child= {
    "IR" : 0.64,
    "EF": 365,
    "ED": 6,
    "BW": 25,
    "AT": 365 * 6,
    "SA": 6600,
    "ET": 1,
    "CF": 10**-3,
    'Kp': {
        "Mn": 0.001,
        "Cr": 0.002,
        "Ni": 0.0002,
        "Cu": 0.001,
        "Zn": 0.0006,
        "As": 0.001,
        "Cd": 0.001,
        "Hg": 0.001,
        "Pb": 0.0001
    },
    'RfDing': {
        "Mn": 0.024,
        "Cr": 0.003,
        "Ni": 0.025,
        "Cu": 0.04,
        "Zn": 0.3,
        "As": 0.0003,
        "Cd": 0.0005,
        "Hg": 0.00016,
        "Pb": 0.0035
    },
    "RfDderm": {
        "Mn": 0.00096,
        "Cr": 0.0195,
        "Ni": 0.0054,
        "Cu": 0.04,
        "Zn": 0.06,
        "As": 0.0003,
        "Cd": 0.000025,
        "Hg": 0.00016,
        "Pb": 0.042
    },
    "CSFing": {
        "Cd": 0.38,
        "Cr": 0.5,
        "As": 1.5,
        "Pb": 0.0085,
        "Ni": 1.7
    },
    "CSFderm": {
        "Cd": 0.38,
        "Cr": 0.5,
        "As": 1.5,
        "Pb": 0.0085,
        "Ni": 1.7
    }
    

}



def simul(df):


    def HI_WA(df):
        shil = pd.DataFrame(data={
            "Cd": df.CdW,
            "Cr": df.CrW,
            "Ni": df.NiW,
            "Cu": df.CuW,
            "Zn": df.ZnW,
            "Mn": df.MnW,
            "Hg": df.HgW,
            "As": df.AsW,
            "Pb": df.PbW,
        })

        Mn = (shil["Mn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_ing = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        hqMn = cdi_ing["Mn"] / param_adult["RfDing"]["Mn"]
        hqCr = cdi_ing["Cr"] / param_adult["RfDing"]["Cr"]
        hqCu = cdi_ing["Cu"] / param_adult["RfDing"]["Cu"]
        hqZn = cdi_ing["Zn"] / param_adult["RfDing"]["Zn"]
        hqAs = cdi_ing["As"] / param_adult["RfDing"]["As"]
        hqCd = cdi_ing["Cd"] / param_adult["RfDing"]["Cd"]
        hqHg = cdi_ing["Hg"] / param_adult["RfDing"]["Hg"]
        hqPb = cdi_ing["Pb"] / param_adult["RfDing"]["Pb"]
        hqNi = cdi_ing["Ni"] / param_adult["RfDing"]["Ni"]

        hq_ingwa = pd.DataFrame(data = {
            "Mn": hqMn,
            "Cr": hqCr,
            "Ni": hqNi,
            "Cu": hqCu,
            "Zn": hqZn,
            "As": hqAs,
            "Cd": hqCd,
            "Hg": hqHg,
            "Pb": hqPb
        }
        )

        Mn = (shil["Mn"] * param_adult["SA"] * param_adult["Kp"]["Mn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["SA"] * param_adult["Kp"]["Cr"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["SA"] * param_adult["Kp"]["Ni"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["SA"] * param_adult["Kp"]["Cu"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["SA"] * param_adult["Kp"]["Zn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["SA"] * param_adult["Kp"]["As"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["SA"] * param_adult["Kp"]["Cd"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["SA"] * param_adult["Kp"]["Hg"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["SA"] * param_adult["Kp"]["Pb"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_derm = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        hqMn = cdi_derm["Mn"] / param_adult["RfDderm"]["Mn"]
        hqCr = cdi_derm["Cr"] / param_adult["RfDderm"]["Cr"]
        hqCu = cdi_derm["Cu"] / param_adult["RfDderm"]["Cu"]
        hqZn = cdi_derm["Zn"] / param_adult["RfDderm"]["Zn"]
        hqAs = cdi_derm["As"] / param_adult["RfDderm"]["As"]
        hqCd = cdi_derm["Cd"] / param_adult["RfDderm"]["Cd"]
        hqHg = cdi_derm["Hg"] / param_adult["RfDderm"]["Hg"]
        hqPb = cdi_derm["Pb"] / param_adult["RfDderm"]["Pb"]
        hqNi = cdi_derm["Ni"] / param_adult["RfDderm"]["Ni"]

        hq_dermwa = pd.DataFrame(data = {
            "Mn": hqMn,
            "Cr": hqCr,
            "Ni": hqNi,
            "Cu": hqCu,
            "Zn": hqZn,
            "As": hqAs,
            "Cd": hqCd,
            "Hg": hqHg,
            "Pb": hqPb
        }
        )

        hi = hq_dermwa + hq_ingwa
        hiwa = hi.sum(axis=1)

        return hi, hiwa




    def CR_WA(df):

        shil = pd.DataFrame(data={
            "Cd": df.CdW,
            "Cr": df.CrW,
            "Ni": df.NiW,
            "Cu": df.CuW,
            "Zn": df.ZnW,
            "Mn": df.MnW,
            "Hg": df.HgW,
            "As": df.AsW,
            "Pb": df.PbW,
        })

        Mn = (shil["Mn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_ing = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        Mn = (shil["Mn"] * param_adult["SA"] * param_adult["Kp"]["Mn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["SA"] * param_adult["Kp"]["Cr"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["SA"] * param_adult["Kp"]["Ni"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["SA"] * param_adult["Kp"]["Cu"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["SA"] * param_adult["Kp"]["Zn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["SA"] * param_adult["Kp"]["As"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["SA"] * param_adult["Kp"]["Cd"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["SA"] * param_adult["Kp"]["Hg"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["SA"] * param_adult["Kp"]["Pb"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_derm = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        Cd = cdi_ing.Cd * param_adult["CSFing"]["Cd"]
        Cr = cdi_ing.Cr * param_adult["CSFing"]["Cr"]
        As = cdi_ing.As * param_adult["CSFing"]["As"]
        Pb = cdi_ing.Pb * param_adult["CSFing"]["Pb"]
        Ni = cdi_ing.Ni * param_adult["CSFing"]["Ni"]


        ilcr_ingwa = pd.DataFrame(data={
            "Cd": Cd,
            "Cr": Cr,
            "As": As,
            "Pb": Pb,
            "Ni": Ni
        })

        Cd = cdi_derm.Cd * param_adult["CSFderm"]["Cd"]
        Cr = cdi_derm.Cr * param_adult["CSFderm"]["Cr"]
        As = cdi_derm.As * param_adult["CSFderm"]["As"]
        Pb = cdi_derm.Pb * param_adult["CSFderm"]["Pb"]
        Ni = cdi_derm.Ni * param_adult["CSFderm"]["Ni"]

        ilcr_dermwa = pd.DataFrame(data={
            "Cd": Cd,
            "Cr": Cr,
            "As": As,
            "Pb": Pb,
            "Ni": Ni
        })

        ilcr = ilcr_ingwa + ilcr_dermwa
        ilcr_wadult = ilcr.sum(axis=1)

        return ilcr, ilcr_wadult




    def HI_SA(df):
        shil = pd.DataFrame(data={
            "Cd": df.CdS,
            "Cr": df.CrS,
            "Ni": df.NiS,
            "Cu": df.CuS,
            "Zn": df.ZnS,
            "Mn": df.MnS,
            "Hg": df.HgS,
            "As": df.AsS,
            "Pb": df.PbS,
        })

        Mn = (shil["Mn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_ing = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        hqMn = cdi_ing["Mn"] / param_adult["RfDing"]["Mn"]
        hqCr = cdi_ing["Cr"] / param_adult["RfDing"]["Cr"]
        hqCu = cdi_ing["Cu"] / param_adult["RfDing"]["Cu"]
        hqZn = cdi_ing["Zn"] / param_adult["RfDing"]["Zn"]
        hqAs = cdi_ing["As"] / param_adult["RfDing"]["As"]
        hqCd = cdi_ing["Cd"] / param_adult["RfDing"]["Cd"]
        hqHg = cdi_ing["Hg"] / param_adult["RfDing"]["Hg"]
        hqPb = cdi_ing["Pb"] / param_adult["RfDing"]["Pb"]
        hqNi = cdi_ing["Ni"] / param_adult["RfDing"]["Ni"]

        hq_ingsa = pd.DataFrame(data = {
            "Mn": hqMn,
            "Cr": hqCr,
            "Ni": hqNi,
            "Cu": hqCu,
            "Zn": hqZn,
            "As": hqAs,
            "Cd": hqCd,
            "Hg": hqHg,
            "Pb": hqPb
        }
        )

        Mn = (shil["Mn"] * param_adult["SA"] * param_adult["Kp"]["Mn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["SA"] * param_adult["Kp"]["Cr"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["SA"] * param_adult["Kp"]["Ni"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["SA"] * param_adult["Kp"]["Cu"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["SA"] * param_adult["Kp"]["Zn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["SA"] * param_adult["Kp"]["As"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["SA"] * param_adult["Kp"]["Cd"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["SA"] * param_adult["Kp"]["Hg"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["SA"] * param_adult["Kp"]["Pb"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_derm = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        hqMn = cdi_derm["Mn"] / param_adult["RfDderm"]["Mn"]
        hqCr = cdi_derm["Cr"] / param_adult["RfDderm"]["Cr"]
        hqCu = cdi_derm["Cu"] / param_adult["RfDderm"]["Cu"]
        hqZn = cdi_derm["Zn"] / param_adult["RfDderm"]["Zn"]
        hqAs = cdi_derm["As"] / param_adult["RfDderm"]["As"]
        hqCd = cdi_derm["Cd"] / param_adult["RfDderm"]["Cd"]
        hqHg = cdi_derm["Hg"] / param_adult["RfDderm"]["Hg"]
        hqPb = cdi_derm["Pb"] / param_adult["RfDderm"]["Pb"]
        hqNi = cdi_derm["Ni"] / param_adult["RfDderm"]["Ni"]

        hq_dermsa = pd.DataFrame(data = {
            "Mn": hqMn,
            "Cr": hqCr,
            "Ni": hqNi,
            "Cu": hqCu,
            "Zn": hqZn,
            "As": hqAs,
            "Cd": hqCd,
            "Hg": hqHg,
            "Pb": hqPb
        }
        )

        hi = hq_dermsa + hq_ingsa
        hisa = hi.sum(axis=1)

        return hi, hisa


    def CR_SA(df):

        shil = pd.DataFrame(data={
            "Cd": df.CdS,
            "Cr": df.CrS,
            "Ni": df.NiS,
            "Cu": df.CuS,
            "Zn": df.ZnS,
            "Mn": df.MnS,
            "Hg": df.HgS,
            "As": df.AsS,
            "Pb": df.PbS,
        })

        Mn = (shil["Mn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["IR"] * param_adult["EF"] * param_adult["ED"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_ing = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        Mn = (shil["Mn"] * param_adult["SA"] * param_adult["Kp"]["Mn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cr = (shil["Cr"] * param_adult["SA"] * param_adult["Kp"]["Cr"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Ni = (shil["Ni"] * param_adult["SA"] * param_adult["Kp"]["Ni"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cu = (shil["Cu"] * param_adult["SA"] * param_adult["Kp"]["Cu"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Zn = (shil["Zn"] * param_adult["SA"] * param_adult["Kp"]["Zn"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        As = (shil["As"] * param_adult["SA"] * param_adult["Kp"]["As"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Cd = (shil["Cd"] * param_adult["SA"] * param_adult["Kp"]["Cd"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Hg = (shil["Hg"] * param_adult["SA"] * param_adult["Kp"]["Hg"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])
        Pb = (shil["Pb"] * param_adult["SA"] * param_adult["Kp"]["Pb"] * param_adult["ET"] * param_adult["EF"] * param_adult["ED"] * param_adult["CF"])/ (param_adult["BW"]* param_adult["AT"])

        cdi_derm = pd.DataFrame(data = {
            "Mn": Mn,
            "Cr": Cr,
            "Ni": Ni,
            "Cu": Cu,
            "Zn": Zn,
            "As": As,
            "Cd": Cd,
            "Hg": Hg,
            "Pb": Pb
        }
        )

        Cd = cdi_ing.Cd * param_adult["CSFing"]["Cd"]
        Cr = cdi_ing.Cr * param_adult["CSFing"]["Cr"]
        As = cdi_ing.As * param_adult["CSFing"]["As"]
        Pb = cdi_ing.Pb * param_adult["CSFing"]["Pb"]
        Ni = cdi_ing.Ni * param_adult["CSFing"]["Ni"]


        ilcr_ingsa = pd.DataFrame(data={
            "Cd": Cd,
            "Cr": Cr,
            "As": As,
            "Pb": Pb,
            "Ni": Ni
        })

        Cd = cdi_derm.Cd * param_adult["CSFderm"]["Cd"]
        Cr = cdi_derm.Cr * param_adult["CSFderm"]["Cr"]
        As = cdi_derm.As * param_adult["CSFderm"]["As"]
        Pb = cdi_derm.Pb * param_adult["CSFderm"]["Pb"]
        Ni = cdi_derm.Pb * param_adult["CSFderm"]["Ni"]


        ilcr_dermsa = pd.DataFrame(data={
            "Cd": Cd,
            "Cr": Cr,
            "As": As,
            "Pb": Pb,
            "Ni": Ni
        })

        ilcr = ilcr_ingsa + ilcr_dermsa
        ilcr_sadult = ilcr.sum(axis=1)

        return ilcr, ilcr_sadult




    def random_genW(df):
        cdW = []
        crW = []
        niW = []
        cuW = []
        znW = []
        mnW = []
        hgW = []
        asW = []
        pbW = []

        metals = [cdW, 
                crW, 
                niW, 
                cuW, 
                znW, 
                mnW, 
                hgW, 
                asW, 
                pbW]

        def logic(x, elem):
            if x > 0:
                elem.append(x)


        metalsW = [df.CdW, 
                df.CrW, 
                df.NiW, 
                df.CuW,
                df.ZnW, 
                df.MnW,
                df.HgW, 
                df.AsW,
                df.PbW]



        for j in range(9):
            i = 0        
            while i < 10000:
                x = np.random.normal(metalsW[j].mean(), metalsW[j].std())
                logic(x, metals[j])    
                i = len(metals[j])


    metalsW = random_genW(df)





    dataW = pd.DataFrame(data={
        "CdW":metalsW[0],
        "CrW":metalsW[1],
        "NiW":metalsW[2],
        "CuW":metalsW[3],
        "ZnW":metalsW[4],
        "MnW":metalsW[5],
        "HgW":metalsW[6],
        "AsW":metalsW[7],
        "PbW":metalsW[8],
    })




    def random_genS(df):
        cdS = []
        crS = []
        niS = []
        cuS = []
        znS = []
        mnS = []
        hgS = []
        asS = []
        pbS = []

        metals = [cdS, 
                crS, 
                niS, 
                cuS, 
                znS, 
                mnS, 
                hgS, 
                asS, 
                pbS]

        def logic(x, elem):
            if x > 0:
                elem.append(x)


        metalsS = [df.CdS, 
                df.CrS, 
                df.NiS, 
                df.CuS,
                df.ZnS, 
                df.MnS,
                df.HgS, 
                df.AsS,
                df.PbS]



        for j in range(9):
            i = 0        
            while i < 10000:
                x = np.random.normal(metalsS[j].mean(), metalsS[j].std())
                logic(x, metals[j])    
                i = len(metals[j])



    metalsS = random_genS(df)



    dataS = pd.DataFrame(data={
        "CdS":metalsS[0],
        "CrS":metalsS[1],
        "NiS":metalsS[2],
        "CuS":metalsS[3],
        "ZnS":metalsS[4],
        "MnS":metalsS[5],
        "HgS":metalsS[6],
        "AsS":metalsS[7],
        "PbS":metalsS[8],
    })


    dataW.to_csv("monteData/simul/orig_dataW.csv")
    dataS.to_csv("monteData/simul/orig_dataS.csv")



    rawHiW, hiWA = HI_WA(dataW)
    rawHiS, hiSA = HI_SA(dataS)

    rawCRW, crWA = CR_WA(dataW)
    rawCRS, crSA = CR_SA(dataS)



    Whi = pd.DataFrame(data={
        "Values": hiWA,
        "Seasons": winter
    })

    Shi = pd.DataFrame(data={
        "Values": hiSA,
        "Seasons": summer
    })

    Wcr = pd.DataFrame(data={
        "Values": crWA,
        "Seasons": winter
    })

    Scr = pd.DataFrame(data={
        "Values": crSA,
        "Seasons": summer
    })



    hiA = pd.concat([Whi, Shi])
    crA = pd.concat([Wcr, Scr])


    hiA.to_csv("monteData/simul/hiA_orig.csv")
    crA.to_csv("monteData/simul/crA_orig.csv")
