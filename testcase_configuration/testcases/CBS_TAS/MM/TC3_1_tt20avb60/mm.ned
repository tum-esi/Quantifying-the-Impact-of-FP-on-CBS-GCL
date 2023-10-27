//
// SPDX-License-Identifier: LGPL-3.0-or-later
//

package testcases.CBS_TAS.MM.TC3_1_tt20avb60;

import inet.common.scenario.ScenarioManager;
import inet.networks.base.TsnNetworkBase;
import inet.node.contract.IEthernetNetworkNode;
import inet.node.ethernet.EthernetLink;
import inet.node.tsn.TsnClock;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth100M;

network mm extends TsnNetworkBase
{
    parameters:
        @display("bgb=927,811");
    types:
        channel Eth1G extends inet.node.ethernet.Eth1G
        {
            @display("ls=,3");
        }
    submodules:
        ES1: TsnDevice {
            @display("p=214,183");
            gates:
                ethg[1];
        }
        ES2: TsnDevice {
            @display("p=214,85");
            gates:
                ethg[1];
        }
        ES3: TsnDevice {
            @display("p=346,85");
            gates:
                ethg[1];
        }
        ES4: TsnDevice {
            @display("p=671,85");
            gates:
                ethg[1];
        }
        ES5: TsnDevice {
            @display("p=804,92");
            gates:
                ethg[1];
        }

        ES6: TsnDevice {
            @display("p=804,183");
            gates:
                ethg[1];
        }

        ES7: TsnDevice {
            @display("p=804,409");
            gates:
                ethg[1];
        }
        ES8: TsnDevice {
            @display("p=804,531");
            gates:
                ethg[1];
        }
        ES9: TsnDevice {
            @display("p=671,531");
            gates:
                ethg[1];
        }
        ES10: TsnDevice {
            @display("p=346,525");
            gates:
                ethg[1];
        }
        ES11: TsnDevice {
            @display("p=214,525");
            gates:
                ethg[1];
        }
        ES12: TsnDevice {
            @display("p=214,409");
            gates:
                ethg[1];
        }

        SW1: TsnSwitch {
            @display("p=346,183;is=s");
            gates:
                ethg[6];
        }

        SW2: TsnSwitch {
            @display("p=671,183;is=s");
            gates:
                ethg[6];
        }

        SW3: TsnSwitch {
            @display("p=671,409;is=s");
            gates:
                ethg[6];
        }

        SW4: TsnSwitch {
            @display("p=346,409;is=s");
            gates:
                ethg[6];
        }

    connections:
        //
        // MM topology
        //
        ES1.ethg[0] <--> Eth100M <--> SW1.ethg[0];
        ES2.ethg[0] <--> Eth100M <--> SW1.ethg[1];
        ES3.ethg[0] <--> Eth100M <--> SW1.ethg[2];

        ES4.ethg[0] <--> Eth100M <--> SW2.ethg[0];
        ES5.ethg[0] <--> Eth100M <--> SW2.ethg[1];
        ES6.ethg[0] <--> Eth100M <--> SW2.ethg[2];

        ES7.ethg[0] <--> Eth100M <--> SW3.ethg[0];
        ES8.ethg[0] <--> Eth100M <--> SW3.ethg[1];
        ES9.ethg[0] <--> Eth100M <--> SW3.ethg[2];

        ES10.ethg[0] <--> Eth100M <--> SW4.ethg[0];
        ES11.ethg[0] <--> Eth100M <--> SW4.ethg[1];
        ES12.ethg[0] <--> Eth100M <--> SW4.ethg[2];

        SW1.ethg[3] <--> Eth100M <--> SW2.ethg[5];
        SW1.ethg[5] <--> Eth100M <--> SW4.ethg[3];
        SW1.ethg[4] <--> Eth100M <--> SW3.ethg[4];
        SW3.ethg[3] <--> Eth100M <--> SW4.ethg[5];
        SW3.ethg[5] <--> Eth100M <--> SW2.ethg[3];
        SW2.ethg[4] <--> Eth100M <--> SW4.ethg[4];
}
