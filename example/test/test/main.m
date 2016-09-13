
#import <Foundation/Foundation.h>
#import "XXTEA.h"
#import "DGTeaEncryptor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *text = @"test123";
        NSString *key = @"483dd3cfe93082e199cdcd11d61bfca21486ec3a4abf8f7372aa0b7b1c7ff795ac9af137089b2b4a5b8699bef484e5e377e0ac50ab6bfedfbbf8015ff6b13e41";
        NSString *encrypt_data = [XXTEA encryptStringToBase64String:text stringKey:key];
        NSString *decrypt_data = [XXTEA decryptBase64StringToString:encrypt_data stringKey:key];
        NSLog(@"%@", encrypt_data);
        if ([text isEqual:decrypt_data]) {
            NSLog(@"success!");
        }
        else {
            NSLog(@"fail!");
        }
    }
    return 0;
}
