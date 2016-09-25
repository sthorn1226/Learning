using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostageCalculator
{
    public partial class _default : System.Web.UI.Page
    {
        public int width { get { return int.Parse(widthTextBox.Text); } set { widthTextBox.Text = value.ToString(); } }
        public int height { get { return int.Parse(heightTextBox.Text); } set { heightTextBox.Text = value.ToString(); } }
        public int length { get { return int.Parse(lengthTextBox.Text); } set { lengthTextBox.Text = value.ToString(); } }
        public double DeliveryCost { get { return double.Parse(cost.Value); } set { cost.Value = value.ToString(); } }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Calculate (object sender, EventArgs e)
        {
            var volume = (length > 0) ? length * width * height : width * height;
            if (sender is RadioButtonList)
            {
                var s = (RadioButtonList)sender;
                DeliveryCost = double.Parse(s.SelectedItem.Value);
            }
            resultLabel.Text = string.Format("{0:c}", volume * DeliveryCost);
        }



        
    }
}