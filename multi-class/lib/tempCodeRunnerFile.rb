diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Was a good day")
entry_2 = DiaryEntry.new("Tuesday", "This was not a very good day")
diary.add(entry_1)
diary.add(entry_2)
p diary.find_best_entry_for_reading_time(2,2)