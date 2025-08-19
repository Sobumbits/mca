package com.example.uivalidation2;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import android.support.v7.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText editName, editPhone, editEmail;
    RadioGroup radioGroupGender;
    Button buttonRegister;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize views
        editName = findViewById(R.id.editTextTextPersonName1);
        editPhone = findViewById(R.id.editTextTextPersonName2);
        editEmail = findViewById(R.id.editTextTextPersonName3);
        radioGroupGender = findViewById(R.id.radioGroupGender);
        buttonRegister = findViewById(R.id.button);

        buttonRegister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                validateInputs();
            }
        });
    }

    private void validateInputs() {
        String name = editName.getText().toString().trim();
        String phone = editPhone.getText().toString().trim();
        String email = editEmail.getText().toString().trim();

        if (TextUtils.isEmpty(name)) {
            editName.setError("Name is required");
            editName.requestFocus();
            return;
        }

        if (TextUtils.isEmpty(phone)) {
            editPhone.setError("Phone number is required");
            editPhone.requestFocus();
            return;
        }
        if (!phone.matches("\\d{10}")) {
            editPhone.setError("Enter a valid 10-digit phone number");
            editPhone.requestFocus();
            return;
        }

        if (TextUtils.isEmpty(email)) {
            editEmail.setError("Email is required");
            editEmail.requestFocus();
            return;
        }
        if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
            editEmail.setError("Enter a valid email");
            editEmail.requestFocus();
            return;
        }

        if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
            editEmail.setError("Enter a valid email");
            editEmail.requestFocus();
            return;
        }

        int selectedGenderId = radioGroupGender.getCheckedRadioButtonId();
        if (selectedGenderId == -1) {
            Toast.makeText(MainActivity.this, "Please select gender", Toast.LENGTH_SHORT).show();
            return;
        }

        Toast.makeText(MainActivity.this, "Registration Successful!", Toast.LENGTH_SHORT).show();
    }
}
