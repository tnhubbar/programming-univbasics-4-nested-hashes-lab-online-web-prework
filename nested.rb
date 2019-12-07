# describe "nested hash" do
#   describe "hopper" do
#     it "operates on the programmer_hash and returns the value of the :grace_hopper key" do
#       expect(hopper).to eq({:known_for => "COBOL", :languages => ["COBOL", "FORTRAN"]})

def hopper
  programmer_hash = 
    {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }

	programmer_hash[:grace_hopper]
end

# describe "alan_kay_is_known_for" do
#     it "operates on the programmer_hash and returns the value of what Alan Kay is known for" do
#       expect(alan_kay_is_known_for).to eq("Object Orientation")
#     end
#   end

def alan_kay_is_known_for
  # What combination of keys would you use to return the value of the :known_for key of :alan_kay?
  
  programmer_hash = 
    {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }
  programmer_hash[:alan_kay][:known_for]
end

# describe "dennis_ritchies_language" do
#     it "operates on the programmer_hash and returns the value of Dennis Ritchie's language as a string" do
#       expect(dennis_ritchies_language).to eq("C")
#     end
#   end

def dennis_ritchies_language
  programmer_hash = 
    {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }

	programmer_hash[:dennis_ritchie][:languages][0]
end

# describe "adding_matz" do 
#     it "operates on the programmer_hash and adds a key/value pair to the top level of the hash, returning the newly-added-to hash" do
#       expect(adding_matz.keys).to include(:yukihiro_matsumoto)
#     end
#   end

def adding_matz
# add the following information to the top level of programmer_hash
# :yukihiro_matsumoto => {
#   :known_for => "Ruby",
#    :languages => ["LISP", "C"]
# }

  programmer_hash = 
    {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }

		 programmer_hash[:yukihiro_matsumoto] = {}
		 programmer_hash[:yukihiro_matsumoto][:known_for] = "Ruby"
		 programmer_hash[:yukihiro_matsumoto][:languages] = ["LISP", "C"]
		 programmer_hash
end

# describe "#changing_alan" do
#     it "operates on the programmer_hash and changes what Alan Kay is known for, returning the newly-changed hash" do
#       expect(changing_alan[:alan_kay][:known_for]).to eq("GUI")
#     end
#   end

def changing_alan
  programmer_hash = 
    {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }
     #change what Alan Kay is :known_for the value of the alans_new_info variable. 
     alans_new_info = "GUI"

	programmer_hash[:alan_kay][:known_for] = alans_new_info
	programmer_hash
end

# describe "#adding_to_dennis" do
#     it "operates on the programmer_hash and adds 'Assembly' to Dennis Ritchie's languages, returning the newly-added-to-hash" do
#       expect(adding_to_dennis[:dennis_ritchie][:languages][1]).to include("Assembly")
#     end

def adding_to_dennis
	programmer_hash =
 		{
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }
	programmer_hash[:dennis_ritchie][:languages] << "Assembly"
	programmer_hash
end
