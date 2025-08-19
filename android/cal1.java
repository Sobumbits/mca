package com.example.enumcalculator;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    EditText input;
    Button b1, b2, b3, b4, b5, b6, b7, b8, b9, b0;
    Button add, sub, mul, div, equal, clear;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        input = findViewById(R.id.e3);

        b0 = findViewById(R.id.b10);
        b1 = findViewById(R.id.b1);
        b2 = findViewById(R.id.b2);
        b3 = findViewById(R.id.b3);
        b4 = findViewById(R.id.b4);
        b5 = findViewById(R.id.b5);
        b6 = findViewById(R.id.b6);
        b7 = findViewById(R.id.b7);
        b8 = findViewById(R.id.b8);
        b9 = findViewById(R.id.b9);

        add = findViewById(R.id.ba);
        sub = findViewById(R.id.bs);
        mul = findViewById(R.id.bm);
        div = findViewById(R.id.bd);
        equal = findViewById(R.id.be);
        clear = findViewById(R.id.bclr);

        b0.setOnClickListener(v -> input.append("0"));
        b1.setOnClickListener(v -> input.append("1"));
        b2.setOnClickListener(v -> input.append("2"));
        b3.setOnClickListener(v -> input.append("3"));
        b4.setOnClickListener(v -> input.append("4"));
        b5.setOnClickListener(v -> input.append("5"));
        b6.setOnClickListener(v -> input.append("6"));
        b7.setOnClickListener(v -> input.append("7"));
        b8.setOnClickListener(v -> input.append("8"));
        b9.setOnClickListener(v -> input.append("9"));

        add.setOnClickListener(v -> input.append("+"));
        sub.setOnClickListener(v -> input.append("-"));
        mul.setOnClickListener(v -> input.append("*"));
        div.setOnClickListener(v -> input.append("/"));

        clear.setOnClickListener(v -> input.setText(""));

        equal.setOnClickListener(v -> {
            String expr = input.getText().toString();
            try {
                String[] parts;
                int result = 0;

                if (expr.contains("+")) {
                    parts = expr.split("\\+");
                    result = Integer.parseInt(parts[0]) + Integer.parseInt(parts[1]);
                } else if (expr.contains("-")) {
                    parts = expr.split("-");
                    result = Integer.parseInt(parts[0]) - Integer.parseInt(parts[1]);
                } else if (expr.contains("*")) {
                    parts = expr.split("\\*");
                    result = Integer.parseInt(parts[0]) * Integer.parseInt(parts[1]);
                } else if (expr.contains("/")) {
                    parts = expr.split("/");
                    result = Integer.parseInt(parts[0]) / Integer.parseInt(parts[1]);
                }

                input.setText(String.valueOf(result));
            } catch (Exception e) {
                input.setText("Error");
            }
        });
    }
}
