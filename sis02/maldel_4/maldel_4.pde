//�}���f���u���W��
//�p�����[�^�����@�\�̓���
// Hajime Nobuhara

//�������W�̐ݒ�
//��قǃp�����[�^�𒲐�
float a = -0.5; //���Wx�����̒萔��a 
float b = 0.0; //���Wx�����̒萔��b 
float w = 1.8; //�{���̐ݒ�

// �Z�b�g�A�b�v��
void setup(){
  size(400,400); //400x400��f�̕`�摋���쐬
  colorMode(RGB); //RGB�F��ԂɃZ�b�g
  background(0); //�w�i�͍��ɃZ�b�g
  
  //Creat�t�H���g�ō쐬�����t�H���g��ǂݍ���
  PFont font = loadFont("AgencyFB-Reg-24.vlw");
  textFont(font);
}

//�`�敔
void draw(){
   
  int h = width / 2; 
  int n = 50; //�����񐔂��Z�b�g
  int c; //�J���[�ϐ����Z�b�g
  
  int i,j,l;
  float x, y, zx, zy, u, v, mx;
  
  // �e���W�_�ɂ��Čv�Z���Ă䂭
  for(i=-h; i<=h; i++){
      u = (w * i / h) + a; // x���W�𓮂���
      for(j=-h; j<=h; j++){
        v = (w * j / h) + b; // y���W�𓮂���
        
        x = 0.0;
        y = 0.0;
        for(l=1; l<=n; l++){
          zx = x * x - y * y + u;
          zy = 2 * x * y + v;
          x = zx;
          y = zy;
          mx = x * x + y * y;
          if (mx >= 10.0){
            break; // mx��10�ȏ�ɂȂ����甭�U�Ɣ���
          }
        }
        
        //���U�̃X�s�[�h��������� �J���[�ϐ� c�̒l�͏������Ȃ�
        c = int (256 * l / n); 
        
        //���U�̃X�s�[�h���������A���ɋ߂��F�ɂȂ�
        stroke(c, c, c);
        point(200+i, 200-j);
        point(200+i, 200+j);
      }
  }

  if(keyPressed) {
     if (key == 'b')
        b = b + 0.010;
     
     if (key == 'n')  
        b = b - 0.010;
      
     if (key == 'a')
        a = a + 0.010;
     
     if (key == 's')  
        a = a - 0.010;
      
     if (key == 'w')
        w = w + 0.010;
     
     if (key == 'e')  
        w = w - 0.010;
      
  }



  PFont font = loadFont("AgencyFB-Reg-24.vlw");
  textFont(font);
  text("a=" + nf(a,0,2) + ", b=" + nf(b,0,2) + ", w=" + nf(w,0,2), 50,385);
  //nf �͏����_�ȉ��̌����𐧌䂷��֐��ł�
}


//�}�E�X�������Ƃ��̉�ʂ��L���v�`���ł��܂�
void mousePressed() {
 saveFrame("sample"); 
}

