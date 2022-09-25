module Services
  class Week
    DAY_O_WEEK = {
      monday: 'понедельник',
      tuesday: 'вторник',
      wednesday: 'среда',
      thurday: 'четверг',
      friday: 'пятница',
      saturday: 'суббота',
      sunday: 'воскресенье'
    }

    def self.call
      new.call
    end

    def call
      DAY_O_WEEK
    end
  end
end