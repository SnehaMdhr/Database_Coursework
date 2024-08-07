import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the dataset
data = pd.read_csv("AirlineReviews.csv")

# line graph

data['CabinType'] = pd.Categorical(data['CabinType'])

plt.figure(figsize=(12, 6))
sns.lineplot(x='CabinType', y='SeatComfortRating', data=data, marker='o')
plt.title('Line Graph - Seat Comfort Rating by Cabin Type')
plt.xlabel('Cabin Type')  
plt.ylabel('Seat Comfort Rating')  
plt.ylim(0, 5) 
plt.yticks(ticks=[1, 2, 3, 4, 5])  
plt.xticks(rotation=45)  
plt.tight_layout() 
plt.show()


#bargraph
plt.figure(figsize=(12, 6))
sns.barplot(x='Recommended', y='ValueRating', data=data, hue='Recommended', palette='viridis', legend=False)

plt.title('Bar Graph - Recommendation by Value Rating')
plt.xlabel('Recommendation')
plt.ylabel('Value Rating')  
plt.xticks(rotation=90) 
plt.show()

# Histogram 
plt.figure(figsize=(12, 6))
sns.histplot(data['FoodRating'], bins=30, kde=True, color='blue')
plt.title('Histogram - Food Rating')  
plt.xlabel('Rating')
plt.ylabel('Count') 
plt.show()


#box-whisker plot
plt.figure(figsize=(12, 6))
sns.boxplot(x='TravelType', y='OverallScore', data=data, hue='TravelType', palette="Set2", legend=False)

plt.title('Box Plot - Overall Ratings by Travel Type')
plt.xlabel('Travel Type')  
plt.ylabel('Overall Rating')
plt.xticks(rotation=45)  
plt.tight_layout() 
plt.show()

#pie chart
top_5_service = data['ServiceRating'].value_counts().head(5)
plt.figure(figsize=(12, 6))
plt.pie(top_5_service, labels=top_5_service.index, autopct='%1.1f%%', startangle=140)
plt.title('Pie Chart - Service Rating')
plt.show()