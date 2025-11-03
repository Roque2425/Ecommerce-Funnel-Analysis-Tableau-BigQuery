# eCommerce Funnel Analysis Dashboard Report  

<p align="justify">
Comprehensive Funnel Conversion Analysis using GA4 and BigQuery
</p>

<div align="center">  
  <img src="https://github.com/Roque2425/Ecommerce-Funnel-Analysis-Tableau-BigQuery/blob/main/ecommerce_funnel_analysis2.png" width="95%">  
</div>  

### Table of Contents <a name="toc"></a>

[1. Background](#background)  
[2. Objective](#objective)  
[3. Funnel Overview](#funnel-overview)  
[4. Device Segmentation Report](#device-segmentation)  
[5. Traffic Source Report](#traffic-source)  
[6. User Trend Analysis](#user-trends)  
[7. Key Takeaways](#key-takeaways)  
[8. Recommendations](#recommendations)  

---

## 1. Background <a name="background"></a> <a href="#toc">[↑]</a>

<p align="justify">
This project presents an analytical view of an eCommerce funnel derived from GA4 session-level data stored in BigQuery. It examines user progression across the conversion journey — from session start to final purchase — while integrating multiple dimensions such as landing page, traffic source, campaign, and device category. The analysis aims to reveal behavioral drop-offs, highlight key opportunities for optimization, and strengthen marketing and user experience strategies.
</p>

---

## 2. Objective <a name="objective"></a> <a href="#toc">[↑]</a>

<p align="justify">
To analyze the online purchasing funnel by tracking user engagement and conversion metrics. The project seeks to identify the main drop-off points, segment user behavior by device and source, and generate insights that can improve website performance, conversion rate, and marketing ROI.
</p>

---

## 3. Funnel Overview <a name="funnel-overview"></a> <a href="#toc">[↑]</a>

### Top KPIs:
- **Visits (Sessions):** 481,209  
- **Orders:** 4,851  
- **Revenue:** $250,391  

<p align="justify">
The dashboard reveals a high volume of user sessions; however, only a small fraction converts into purchases, indicating substantial opportunities for funnel optimization and conversion rate improvement.
</p>

### Funnel Conversion Steps (%):
- **Session Start:** ~73–74% of total sessions  
- **View Item:** ~16–17%  
- **Add to Cart:** ~3–4%  
- **Begin Checkout → Purchase:** less than 3%  

<p align="justify">
A significant drop-off occurs between “View Item” and “Add to Cart,” followed by another steep decline at the checkout stage. This pattern suggests friction in the purchasing process that needs to be addressed through UX, pricing, or trust-building improvements.
</p>

---

## 4. Device Segmentation Report <a name="device-segmentation"></a> <a href="#toc">[↑]</a>


### Sessions by Device:
- **Desktop:** ~279K sessions  
- **Mobile:** ~191K sessions  
- **Tablet:** ~10K sessions  

<p align="justify">
Desktop users dominate across all funnel stages, followed by Mobile users, while Tablet traffic remains minimal. This indicates that optimization efforts — including design responsiveness and checkout experience — should prioritize Desktop and Mobile platforms.
</p>

---

## 5. Traffic Source Report <a name="traffic-source"></a> <a href="#toc">[↑]</a>


### Traffic Distribution:
- **Top Sources:** Google, Direct, and Other channels  
- **Moderate Source:** shop.googlemerchandisestore.com  
- **Tracking Gaps:** Minor portion labeled as “Data Deleted”  

<p align="justify">
The analysis shows that Google and Direct channels drive the majority of traffic. However, incomplete tracking under “Data Deleted” implies possible tag or data collection issues. Strengthening tracking consistency can help capture full funnel performance and attribution accuracy.
</p>

---

## 6. User Trend Analysis <a name="user-trends"></a> <a href="#toc">[↑]</a>
 

### Temporal Insights:
- **Timeframe:** November 2020 – January 2021  
- **Daily Sessions:** ~3K to 10K  
- **Activity Peaks:** Mid-December and scattered highs in November and January  

<p align="justify">
User activity peaks around mid-December, suggesting seasonal spikes likely driven by holiday promotions. Identifying and aligning marketing campaigns with these peaks can maximize engagement and conversions. Overall, session volume remains relatively stable, indicating consistent site visibility.
</p>

---

## 7. Key Takeaways <a name="key-takeaways"></a> <a href="#toc">[↑]</a>

- <p align="justify"><strong>Major funnel drop-offs</strong> occur between item views and cart additions, signaling a need for improved product presentation or incentives.</p>

- <p align="justify"><strong>Desktop</strong> remains the dominant platform, with <strong>Mobile</strong> contributing substantially, emphasizing the importance of responsive and fast-loading interfaces.</p>

- <p align="justify"><strong>Google and Direct channels</strong> account for most traffic; enhancing campaign tracking and attribution will refine performance measurement.</p>

- <p align="justify"><strong>Seasonal peaks</strong> suggest user engagement is highest during mid-December, making it an ideal time for marketing pushes.</p>

- <p align="justify">A <strong>small data loss segment (“Data Deleted”)</strong> indicates the need for GA4 tag auditing and tracking consistency.</p>

---

## 8. Recommendations <a name="recommendations"></a> <a href="#toc">[↑]</a>

### Funnel Optimization
- <p align="justify">Simplify the <strong>add-to-cart and checkout process</strong> to reduce friction and improve conversion rates.</p>
- <p align="justify">Introduce <strong>personalized product recommendations</strong> or dynamic retargeting for users dropping off after item views.</p>
- <p align="justify">Implement <strong>exit intent popups</strong> and cart recovery emails for abandoned carts.</p>

### UX & Device Strategy
- <p align="justify">Prioritize <strong>Desktop and Mobile UX optimization</strong>, ensuring quick load times and intuitive navigation.</p>
- <p align="justify">Evaluate <strong>checkout form design</strong> and minimize unnecessary steps for both devices.</p>

### Marketing & Source Management
- <p align="justify">Focus ad spend and content strategy on <strong>Google and Direct channels</strong> while re-evaluating underperforming referral sources.</p>
- <p align="justify">Investigate and resolve <strong>“Data Deleted” traffic</strong> issues to improve tracking completeness.</p>

### Temporal Campaign Strategy
- <p align="justify">Leverage <strong>mid-December and high-activity days</strong> for promotions and remarketing.</p>
- <p align="justify">Use session trend analysis to forecast and plan campaigns for recurring high-engagement periods.</p>

### Data Governance
- <p align="justify">Ensure continuous <strong>GA4 tag auditing</strong> and monitoring of data collection accuracy.</p>
- <p align="justify">Integrate <strong>BigQuery pipelines</strong> with automated validation for real-time funnel tracking.</p>

---

### Tools & Technologies Used <a href="#toc">[↑]</a>

The project was developed using **BigQuery for data extraction**, **Google Analytics 4 (GA4)** for session-level tracking, and **Power BI** for dashboard visualization and interactivity.

**DataSense PH eCommerce Funnel Analysis Challenge by Riel Roque** 🚀  
