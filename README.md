# Pewlett-Hackard-Analysis

# Purpose:

# the main purpose was to get introduced to SQL and all the nuances it has, including how to set up a database and some of the basic code structure, including ways to map it out ahead of time.

#within the data, challenge one highlighted which departments have the most people at retiring age, and how the company should plan accordingly, as well as what employees would be
the best candidates to mentor younger employees. 

#anaylsis:

#The engineering department will suffer the most, since, as retiring_titles_SC.png shows, over 40,000 engineers and senior engineers will retire, and, per the mentorship program
and Potential_Engineer_Mentors.png show, less than 1,000 potential mentors (assistant, senior and regular engineers) will be available. While new engineers can be hired, it is 
unlikely new engineers will be as efficient as experienced engineers, and poaching engineers may be difficult. Other companies likely have a similar issue of a mass retirement, 
and if any workers are willing to come, they will likely cost significantly more than someone fresh out of college to hire.

#management seems to have the least amount of retirement, with retiring_titles_SC.png showing only two retiring. Though anecdotal, this reminds me of a statement about how 
the engineers, needing a specific degree that's difficult to require may entitle them to stay in the field, as well as leverage the time to get raises or benefits. 
Management, by contrast, does not need a specific degree, and while training is needed, management skills are more universal than engineering, as most places need a manager.
Therefore, managers may leave or be fired should they ask for better pay, and a replacement is easier to find.

# Out of the three engineer categories, assistant engineers are retiring in the lowest amount. Assuming this job promotes into being a full engineer, it shows that these 
positions are likely easier to fill, as most people would likely get promoted or leave, even if they require more specialization than a manager. 

#while age and time do not always mean better workers, it's likely the mentor candidates would be very knowledgable about the company, as Average_mentor_start_date.png shows 
the average start date being in January of 1994. With that, it's likely they would know a lot about the company specifically, instead of recently joining as an outside hire.

#Additional Thoughts

#Overall, the company seems unprepared for a silver tsumani. There are over 90,000 employees likely to retire, and while more staff can be hired, it's either going to be less 
experienced new recruits, or expensive poached outside hires. This is especially true for engineering roles, less true for staff, and close to false for management/technique 
leaders. With only roughly 1,500 possible mentors, it would likely overwhelm the staff or give out less than efficient mentoring, as, assuming everyone retired, every 
potential mentor accepted, and every new hire needed a mentor, it would require each mentor to take on roughly 60 mentees.

#While the total number of staff says the quantity of workers leaving, and quality is somewhat shown in senior/junior rankings, it would be beneficial to estimate the 
quality as well. In future analysis, it would be beneficial to include salary as an (albeit imperfect) proxy for productivity. That way, a more accurate depiction of the how
good or bad the retiring engineers are can be seen. It may take more than one recruit to truly replace a retiring engineer.

#If it's possible to compare archives, it's also worth noting how long people stay in their specific roles. Since the mass mentoring is impractical at best, it's worth exploring 
which positions have people leave the fastest, and which tend to stay. Though not perfect, as it's extremely likely someone in a senior position has been there longer than someone
in a more junior role, combining senior and junior roles, then comparing the three major positions (technique leader/manager, staff, and engineering) would show who is the most
likely to stay based on trends, and therefore should be prioritized in training
