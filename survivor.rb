class SurvivorGame 
	attr_accessor :tribes

	def initialize
		@tribes = []

	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def immunity_challenge
		losing_tribe = @tribes.sample
		puts "#{losing_tribe.name} lost the Immunity Challenge."
		losing_tribe

	end

end

class Tribe
	attr_accessor :contestants , :name

	def initialize(contestants, name)
		@contestants = contestants
		@name = name

	end
	
	def vote_out_member
		losing_person = @contestants.sample
		puts "#{losing_person} has been voted off the island."
		@contestants.delete(losing_person)

	end	

end


def test
	s1 = SurvivorGame.new

	pagong = Tribe.new(["Sean", "Lulu", "Kevin", "Walter"], "Pagong")
	ogakor = Tribe.new(["Dan", "jeff", "Alex", "Ed"], "Ogakor")
	s1.add_tribe(ogakor)
	s1.add_tribe(pagong)
	p s1.tribes	

	losing_tribe = s1.immunity_challenge
	puts losing_tribe.contestants
	losing_tribe.vote_out_member
	puts losing_tribe.contestants

	losing_tribe = s1.immunity_challenge
	puts losing_tribe.contestants	
	losing_tribe.vote_out_member
	puts losing_tribe.contestants

	losing_tribe = s1.immunity_challenge
	puts losing_tribe.contestants	
	losing_tribe.vote_out_member
	puts losing_tribe.contestants

	

end

test