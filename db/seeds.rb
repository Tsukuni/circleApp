# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Capacity.create(:capa_image1 => '', :capa_image2 => '', :capa_image3 => '',:capa_image4 => '',:capa_image5 => '',:capa_image6 => '',:context => 'a')
Language.create(:context => 'sample',:image=>'')
UniversityWord.create(:rank1 => 'sample',:rank2 => 'sample',:rank3 => 'sample')
Exam.create(:eaxm_image => 'a')
CampusLife.create(:campus_image1 => 'a',:campus_image2 => 'a')
Love.create(:image1=>'a', :image2=>'a', :image3=>'a', :image4=>'a')
CircleRank.create(:question1 =>'sample')
JobRank.create(:question1 =>'sample')
FashionRank.create(:question1 =>'sample')
SchoolRank.create(:question1 =>'sample')
TripRank.create(:question1 =>'sample')
MapUrl.create(:url => '#')
