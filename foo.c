#include<stdio.h>
int main()
{
    int control_line = 1;
    switch (control_line)
    {
        case 1:
        {
            int i;
            int a=4,b=6,ans=1;
            for(i=0;i<b;i++)
            {
                ans = ans * a;
            }
            printf("%d ** %d = %d", a, b, ans);
            break;
        }

        case 2:
        {
            int arr[] = {-2, 7, 4, 0, 3};
            int i=0, n=5, min = arr[0];
            while(i < n)
            {
                if(arr[i] < min)
                {
                    min = arr[i];
                }
                i++;
            }
            printf("Minimum of array [ ");
            for(i=0;i<n;i++)
                printf("%d ", arr[i]);
            printf("] is ");
            printf("%d", min);
            break;
        }

        default:
        {
            printf("This is a DEFAULT message");
            break;
        }
    }
    return 0;
}