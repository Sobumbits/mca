package com.example.toggle;
import android.view.View;
import android.widget.ImageView;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;




public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ImageView first_image=(ImageView) this.findViewById(R.id.f1);
        ImageView second_image=(ImageView) this.findViewById(R.id.f2);
        first_image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                first_image.setVisibility(view.VISIBLE);
                view.setVisibility(view.GONE);
            }
        });
        second_image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                second_image.setVisibility(View.VISIBLE);
                view.setVisibility(View.GONE);

            }
        });
    }
}
