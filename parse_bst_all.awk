# run this program with the following comand
# awk -f bst_all_yyyy_mm_dd.txt bst_all_yyyy_mm_dd_formatted.txt
{
    if ($1 == 66666) {
        date_and_id = $2; id = substr(date_and_id,3,4) 

        if (substr(date_and_id,1,2)>=50) 
        {
            date=(19 substr(date_and_id,1,2))
        }
        else
        {
            date=(20 substr(date_and_id,1,2))
        }
        if (date < 1991)
        {
            name = $7
        }
        else
        {
            name = $8
        }
    }
}
{
    if ($1 != 66666) {
        {
            print date, id, name, $1, $0
         } 
    }
}
