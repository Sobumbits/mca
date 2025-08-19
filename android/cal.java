package com.example.calculator1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


public class MainActivity extends AppCompatActivity {
EditText e1,e2,e3;
Button bt1,bt2,bt3,bt4;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        e1=findViewById(R.id.t1);
        e2=findViewById(R.id.t2);
        e3=findViewById(R.id.re);

        bt1=findViewById(R.id.b3);
        bt2=findViewById(R.id.b4);
        bt3=findViewById(R.id.b5);
        bt4=findViewById(R.id.b6);

        bt1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double num1 = Double.parseDouble(e1.getText().toString());
                double num2 = Double.parseDouble(e2.getText().toString());
                double result = num1+num2;
                e3.setText(String.valueOf(result));
            }
        });
        bt2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double num1 = Double.parseDouble(e1.getText().toString());
                double num2 = Double.parseDouble(e2.getText().toString());
                double result = num1-num2;
                e3.setText(String.valueOf(result));
            }
        });
        bt3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double num1 = Double.parseDouble(e1.getText().toString());
                double num2 = Double.parseDouble(e2.getText().toString());
                double result = num1/num2;
                e3.setText(String.valueOf(result));
            }
        });
        bt4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double num1 = Double.parseDouble(e1.getText().toString());
                double num2 = Double.parseDouble(e2.getText().toString());
                double result = num1*num2;
                e3.setText(String.valueOf(result));
            }
        });
    }
}
