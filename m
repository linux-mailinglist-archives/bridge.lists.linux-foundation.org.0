Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE56CA111
	for <lists.bridge@lfdr.de>; Thu,  3 Oct 2019 17:20:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0F20AFE5;
	Thu,  3 Oct 2019 15:19:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5F6FE67
	for <bridge@lists.linux-foundation.org>;
	Wed,  2 Oct 2019 12:15:59 +0000 (UTC)
X-Greylist: delayed 00:15:07 by SQLgrey-1.7.6
Received: from mail.ledlenser.com (mail.ledlenser.com [217.5.148.18])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EC148BB
	for <bridge@lists.linux-foundation.org>;
	Wed,  2 Oct 2019 12:15:58 +0000 (UTC)
Received: from mail.ledlenser.com ([192.168.0.221])
	by mail.ledlenser.com  with ESMTP id x92C0ktq027383-x92C0kts027383
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Wed, 2 Oct 2019 14:00:46 +0200
Received: from ex13.zweibrueder.com (192.168.0.220) by EX13-2.zweibrueder.com
	(192.168.0.221) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
	Wed, 2 Oct 2019 14:00:46 +0200
Received: from ex13.zweibrueder.com ([fe80::78de:1dbe:e9f9:952a]) by
	ex13.zweibrueder.com ([fe80::78de:1dbe:e9f9:952a%14]) with mapi id
	15.00.1473.005; Wed, 2 Oct 2019 14:00:46 +0200
From: Andreas Triller <andreas.triller@ledlenser.com>
To: "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
	"adrian27oradea@gmail.com" <adrian27oradea@gmail.com>
Thread-Topic: Re: Re: [Bridge] linux bridge does not forward arp reply back
	packets in a vmware vm
Thread-Index: AdV5A0Awj05TganWTf6EstXhk0Wwgw==
Date: Wed, 2 Oct 2019 12:00:46 +0000
Message-ID: <ce505dbeaf6345049e43b3ff2a3bf260@ex13.zweibrueder.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.0.112]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=ledlenser.com;
	s=ledlenser.com_19; c=relaxed/relaxed; 
	h=from:to:subject:date:message-id:content-type:mime-version;
	bh=E2m385NOBg54L8KTHwA5prBk0f5tcPCFzfd5bDjkeVs=;
	b=N+u4+kcONJeM6+CQZ21WQHcvhms1lXR6Ti4O7PrA3OaIiE9miIap2RHecMGClD62uIMuKgi3X8H9
	3Ppk41RRnRmGDinNHPsVtvc7MVsfGTsZPvaqDhUcysBOssD8aW1DISMfqWPJu0frzlmCTeSNlJkA
	H9EldSLqbtYSj+jR5qiZTlr9saUnIaH3jsfZ9PKV4gFlAWYGm6sVlfOStatFvOKhxqRcJHHutcA0
	r9YdZQkMZmfFF276OE2vjUiHXlvLFBgdHcNyqnNAuITeYhDbiqU7cU24wLfhpfp6iGNtJ3PyIQMy
	d0WNM8BEBNTlrs8CPmD2DP+GHaT+zxEmBN8N5A==
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Thu, 03 Oct 2019 15:19:48 +0000
Subject: Re: [Bridge] linux bridge does not forward arp reply back packets
 in a vmware vm
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Dear Adrian,

Thanks a lot for posting this to the mailing list. I had almost the exact s=
ame setup and hit the same problem. Your post lead me to the solution.
In my case I use 2 Linux bridges connected with a VxLAN tunnel which then g=
oes through an IPSec VPN over the internet. (Meant to stretch some VLANs on=
 Layer 2 over a standard ISP line.)

[ESXi with productive servers and Linux bridge]--[VxLAN<->IPSec]--(Internet=
)--[IPSec<->VxLAN]--[Linux Bridge]--[Physical switch in remote office]

I also saw the ARP request 3 times in a capture, which as you wrote explain=
s why the bridge fails in standard mode. I could also make it work by setti=
ng the setageing parameter to 0.
In the end I am quite sure I know what caused the multiplied ARP requests, =
in case you did not find out yourself.
My Linux bridges are VMs inside 2 different ESXi hosts. The tap device of t=
he bridge was connected to a portgroup on a vswitch which allowed promiscuo=
us mode and had VLAN 4095 assigned, which means "all VLANs".
I was quite surprised when I sniffed the traffic coming out of the far side=
 bridge, since it contained complete IP conversations between other VMs liv=
ing on the same ESXi host as the near end bridge! Not only broadcasts where=
 transmitted, but everything the vswitch handled.
To mitigate, I moved the tap device of the Linux bridges to a new vswitch w=
ith only one port group (also VLAN 4095), connected to the physical switch =
by a dedicated uplink. This lets the physical switch filter all traffic tha=
t is not meant to enter the tunnel. This also stopped the multiplied ARP re=
quests, so I could revert the bridges back to the normal mode with MAC agei=
ng. I guess the reason for the multiplied ARP requests was the existence of=
 the other port groups in the same vswitch as the tap device, maybe in comb=
ination with promiscuous mode.

Thanks a lot again for your input, you stopped me scratching my head.

Best regards

Andreas Triller

On Mon, Dec 18, 2017 at 10:05 AM, Adrian Pascalau
<https://lists.linuxfoundation.org/mailman/listinfo/bridge> wrote:
> On Mon, Dec 18, 2017 at 4:54 AM, Toshiaki Makita
> <https://lists.linuxfoundation.org/mailman/listinfo/bridge> wrote:
>> On 2017/12/17 5:01, Adrian P wrote:
>> ...
>>> Further investigation reveals something strange: when the
>>> communication starts with an arp request (which happens almost all the
>>> time), the bridge wrongly assigns the eth0 mac address to port 1,
>>> instead of port 3.
>>>
>>> Flow again:
>>>
>>> default gw --- vmware --- [ ens160 bridge tap ] --- eth0
>>>
>>> On my bridge, ens160 is port 1, and the tap interface is port 3. Eth0
>>> mac address is fa:16:3e:9a:04:95
>>>
>>> What I have found is that in the forwarding table, the bridge wrongly
>>> assigns the eth0 mac address to the port 1, which is ens160 interface,
>>> instead of assigning it to the port 3, which is the tap interface.
>>> This happens only if the arp table in the cirros VM instance does not
>>> contain the mac address of the destination I am pinging (default gw in
>>> this case), so the cirros VM sends an arp request. See below the eth0
>>> mac address wrongly  assigned in the forwarding table to the port 1:
>>>
>>> # brctl showmacs brq025a9a94-58 | grep fa:16:3e:9a:04:95
>>>   1     fa:16:3e:9a:04:95       no                 0.67
>>>
>>> However, if I manually add the mac address of the destination IP I am
>>> pining into the cirros VM instance arp table, and there is no arp
>>> request sent, just icmp packets going out, then the bridge correctly
>>> assigns the eth0 mac address to the port 3, which is the tap
>>> interface, and everything starts working fine. See below the eth0 mac
>>> address correctly assigned in the forwarding table to the port 3:

