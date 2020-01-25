Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3EF149771
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 20:29:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A855F86A3D;
	Sat, 25 Jan 2020 19:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLxCLbXkWz_X; Sat, 25 Jan 2020 19:29:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04A178698F;
	Sat, 25 Jan 2020 19:29:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0F93C0174;
	Sat, 25 Jan 2020 19:29:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74693C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D66E846EE
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avuQk5Q502Bn for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 19:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BBA684415
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:28:59 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Allan.Nielsen@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="Allan.Nielsen@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: LmzuGqhttF/xfKlz3vN8UCSxVJmlEhupmImJsA7v4AzRU/HKQvQqYBREmoaEzf+fHW7WIsMl7d
 CJQdgDUnTp8T+WbR1g4LluoF3HR3zCJ7ZS99n26UVEIn0FbZK8bmD1e+kFjofsUYFwG9eFW0fq
 YSB+PhTunKvzHwEISleY9WBeDY944oDZV4e2oWUl8bJMVeei5KZm5G91QMePUXiW3RM+myr0qX
 RV2LMM1yghDqn02BzjkdGJHEtTxOxSjdOVElTsrCJjxcqXr1teKz1+mNmt078ke8Q6gaseFvj5
 0CY=
X-IronPort-AV: E=Sophos;i="5.70,362,1574146800"; d="scan'208";a="63107753"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jan 2020 12:28:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 25 Jan 2020 12:28:53 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 25 Jan 2020 12:28:55 -0700
Date: Sat, 25 Jan 2020 20:28:54 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200125192854.yi544iu2atvbbwey@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-5-horatiu.vultur@microchip.com>
 <20200125153403.GB18311@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200125153403.GB18311@lunn.ch>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 04/10] net: bridge: mrp: Add generic
 netlink interface to configure MRP
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 25.01.2020 16:34, Andrew Lunn wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>On Fri, Jan 24, 2020 at 05:18:22PM +0100, Horatiu Vultur wrote:
>> Implement the generic netlink interface to configure MRP. The implementation
>> will do sanity checks over the attributes and then eventually call the MRP
>> interface which eventually will call the switchdev API.
>What was your thinking between adding a new generic netlink interface,
>and extending the current one?
>
>I've not looked at your user space code yet, but i assume it has to
>make use of both? It needs to create the bridge and add the
>interfaces. And then it needs to control the MRP state.
>
>Allan mentioned you might get around to implementing 802.1CB? Would
>that be another generic netlink interface, or would you extend the MRP
>interface?
Horatiu, if you have given this any thoughts, then please share them.

Here are my thoughts on 802.1CB: If we look at this with the traditional
NIC/host POW, then it would be natural to look at the HSR interface as
Vinicius suggested, and expose it as a new interface (HSR0). But when
looking at how 802.1CB say a bridge should act, and also what the
capabilities of the HW are, then it seem more natural to extend the TC
system. In HW it is a TCAM classifying the traffic, and it has some
actions to either replicate the matched frames, or eliminate the
additional copies.

The HW also supports CFM (see [1]), which we need (partly) to complete
the MRP implementation with MIM/MIC roles. This is also useful for none
MRP users (like ERPS).

This seems like an argument for moving this to the existing netlink
interfaces instead of having it as a generic netlink.

[1] https://en.wikipedia.org/wiki/IEEE_802.1ag

/Allan
