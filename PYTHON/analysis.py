import pandas as pd
from pathlib import Path

# ============================================================
# PROJECT PATHS
# ============================================================

project_folder = Path(__file__).parent.parent
dataset_folder = project_folder / "DATASET"

# Original dataset
file_path = dataset_folder / "Online Retail.xlsx"

# New cleaned dataset
cleaned_file = dataset_folder / "cleaned_online_retail.csv"


# ============================================================
# LOAD RAW DATASET
# ============================================================

print("Loading raw Excel dataset...")

df = pd.read_excel(file_path)

print("Original shape:", df.shape)


# ============================================================
# CLEAN DATA
# ============================================================

print("\nCleaning data...")

# Remove duplicate rows
df = df.drop_duplicates()

# Remove rows with missing descriptions
df = df.dropna(subset=["Description"])

# Remove invalid quantities
df = df[df["Quantity"] > 0]

# Remove invalid prices
df = df[df["UnitPrice"] > 0]

# Create Revenue column
df["Revenue"] = df["Quantity"] * df["UnitPrice"]


# ============================================================
# CLEANING RESULTS
# ============================================================

print("\nCleaned shape:", df.shape)

print("\nMissing values after cleaning:")
print(df.isnull().sum())


# ============================================================
# CREATE CLEANED CSV
# ============================================================

print("\nCreating cleaned CSV...")

df.to_csv(cleaned_file, index=False)

print("Cleaned CSV created successfully:")
print(cleaned_file)


# ============================================================
# VERIFY CREATED CSV
# ============================================================

print("\nChecking the new CSV...")

cleaned_df = pd.read_csv(cleaned_file, low_memory=False)

print("\n================ CSV CHECK ================")

print("\nRows:", len(cleaned_df))
print("Columns:", len(cleaned_df.columns))

print("\nColumns:")
print(cleaned_df.columns.tolist())

print("\nMissing values:")
print(cleaned_df.isnull().sum())

print("\nDuplicate rows:", cleaned_df.duplicated().sum())

print("\nFirst 5 rows:")
print(cleaned_df.head())

print("\n================ CHECK COMPLETE ================")