require "rails_helper"

describe SumArrays do
  describe "#unique_names" do
    let(:array1) { ["Sebas", "Omar", "Kathe"] }
    let(:array2) { ["Alejo", "Julian", "Daniel"] }
    let(:array3) { ["Alejo", "Daniela", "Andres", "Cristian", "Omar"] }

    context "When you receive two arrays with different values" do
      it "Should unify the two arrays and return a single array" do
        response = SumArrays.unique_names(array1, array2)
        sum_arrays = ["Sebas", "Omar", "Kathe", "Alejo", "Julian", "Daniel"]

        expect(response).to match_array(sum_arrays)
      end
    end
    context "When you receive two arrays with values that are equal" do
      it "Should  return a single array with the unique values" do
        response = SumArrays.unique_names(array1, array3)
        sum_arrays = ["Alejo", "Daniela", "Andres", "Cristian", "Omar", "Sebas", "Kathe"]

        expect(response).to match_array(sum_arrays)
      end
    end
    context "When you receive two empty arrays" do
      it "Should return array empty" do
        response = SumArrays.unique_names([], [])

        expect(response).to eq([])
      end
    end
    context "When you receive an argument that is not an array type" do
      it "Should return an error message" do
        response = SumArrays.unique_names(array1, 1111)

        expect(response).to eq("It cannot be added because the two arguments are not of the same type")
      end
    end
  end
end
