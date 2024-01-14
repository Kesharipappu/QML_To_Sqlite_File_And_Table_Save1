import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 1.4

Window
{
    width: 2000
    height: 1000
    visible: true
    title: "Student Record Table"
    x: 0


    Component.onCompleted: {
        var query = "SELECT * FROM student";
        var result = d_bmanager.execQuery(query);

        for (var i = 0; i < result.length; i++) {
            myModel.append({
                               name: result[i].name,
                               fatherName: result[i].fatherName,
                               motherName: result[i].motherName,
                               mobileNumber: result[i].mobileNumber,
                               selectedGender:result[i].selectedGender,
                               qualification:result[i].qualification,
                               selectedItems:result[i].skills,
                               state:result[i].state,
                               city:result[i].city,
                               landmark:result[i].landmark,
                               pincode:result[i].pincode

                           });
        }
    }

    TableView {
        id: myTable
        anchors.fill: parent
        anchors.margins: 5

        TableViewColumn {
            role: "name"
            title: "Name"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role: "fatherName"
            title: "Father's Name"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role: "motherName"
            title: "Mother's Name"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"mobileNumber"
            title: "Mobile Number"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"selectedGender"
            title: "Gender"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"qualification"
            title: "Qualification"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"skills"
            title: "Skills"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"state"
            title: "State"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"city"
            title: "City"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"landmark"
            title: "Landmark"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        TableViewColumn {
            role:"pincode"
            title: "Pincode"
            width: 250
            horizontalAlignment: Text.AlignHCenter
        }
        model: myModel
    }
}


