Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF72C25EF78
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 20:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDB098641F;
	Sun,  6 Sep 2020 18:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZPE7leX9JLJ; Sun,  6 Sep 2020 18:21:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0F0686685;
	Sun,  6 Sep 2020 18:21:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2AB0C0051;
	Sun,  6 Sep 2020 18:21:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E763EC0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 18:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C12B2203C9
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 18:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B110GW6Y0RD1 for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 18:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 7CB1D20117
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 18:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1599416507; x=1630952507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=M0+5ySaNOa6fJkTInvb+kM8plRJBi4hcjUiWXFlmZnM=;
 b=QJOFPLql077vcPPWmIbrBgG7IpfjYm6QUw9jRUGxss/Iy64J6IW7kahI
 el0gBQBsD3ssV7nlzfqLLTFo5l0P1swwmVTnjzH8EJ1lQfBCldj3EZQwY
 4MQnyG0qFx5Pe3fGFRfLkJ3EvD0Cg06o0VN3RJcXxrqJzZDmr6O9Ib6Px
 v9uSt7AX4xaIhnFoU1FkyEtZprsYvsY0Ocv6Z39ZiD+t1i+lJyzOocVv/
 GMswZNxJNnsWHV8s02HWSoUREelnlhTYtqzYCZpaqMyK2vft8cMa7Iqlo
 ZIUERalVC5BsW5Ni/iFrQWUePpubZ1qhTY7bdbnf+meUK9urYiLC7oyQr w==;
IronPort-SDR: Cs+sKA/FfJs3HUvqKgjWV+MrRjElNcoaKnkZlm3XoXuKmuOm5kM7zQ4D2nGBkANoQpHU9dQkqP
 dbnma4yKN3fjj/wPx60LHyerGsfkp6i3GJR+eZdozhTY09LvhCv/XinJ/w1fWHP21l5hn6TD4+
 SQ36/NfvTHcz9SfGd3HMGzvC8lMjAuSOH8x1gdNKKGUCzuIEkD4JWMlmWhit4es6G5Ny11L0yz
 7ITXKAaCHLKVn6nQ+tzVdXSQSzk5FgmSwAbi4QTO6Azo30OAqWJDsd/l0Es5yeqLCeoX9WUX/W
 v0c=
X-IronPort-AV: E=Sophos;i="5.76,398,1592895600"; d="scan'208";a="25493963"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Sep 2020 11:21:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 6 Sep 2020 11:21:24 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Sun, 6 Sep 2020 11:21:10 -0700
Date: Sun, 6 Sep 2020 20:21:29 +0200
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20200906182129.274fimjyo7l52puj@soft-dev3.localdomain>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904154406.4fe55b9d@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200904154406.4fe55b9d@hermes.lan>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 jiri@mellanox.com, linux-kernel@vger.kernel.org, idosch@mellanox.com,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH RFC 0/7] net: bridge: cfm: Add support for
 Connectivity Fault Management(CFM)
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 09/04/2020 15:44, Stephen Hemminger wrote:
> 
> On Fri, 4 Sep 2020 09:15:20 +0000
> Henrik Bjoernlund <henrik.bjoernlund@microchip.com> wrote:
> 
> > Connectivity Fault Management (CFM) is defined in 802.1Q section 12.14.
> >
> > Connectivity Fault Management (CFM) comprises capabilities for
> > detecting, verifying, and isolating connectivity failures in
> > Virtual Bridged Networks. These capabilities can be used in
> > networks operated by multiple independent organizations, each
> > with restricted management access to each other’s equipment.
> >
> > CFM functions are partitioned as follows:
> >     — Path discovery
> >     — Fault detection
> >     — Fault verification and isolation
> >     — Fault notification
> >     — Fault recovery
> >
> > The primary CFM protocol shims are called Maintenance Points (MPs).
> > A MP can be either a MEP or a MHF.
> > The MEP:
> >     -It is the Maintenance association End Point
> >      described in 802.1Q section 19.2.
> >     -It is created on a specific level (1-7) and is assuring
> >      that no CFM frames are passing through this MEP on lower levels.
> >     -It initiates and terminates/validates CFM frames on its level.
> >     -It can only exist on a port that is related to a bridge.
> > The MHF:
> >     -It is the Maintenance Domain Intermediate Point
> >      (MIP) Half Function (MHF) described in 802.1Q section 19.3.
> >     -It is created on a specific level (1-7).
> >     -It is extracting/injecting certain CFM frame on this level.
> >     -It can only exist on a port that is related to a bridge.
> >     -Currently not supported.
> >
> > There are defined the following CFM protocol functions:
> >     -Continuity Check
> >     -Loopback. Currently not supported.
> >     -Linktrace. Currently not supported.
> >
> > This CFM component supports create/delete of MEP instances and
> > configuration of the different CFM protocols. Also status information
> > can be fetched and delivered through notification due to defect status
> > change.
> >
> > The user interacts with CFM using the 'cfm' user space client program, the
> > client talks with the kernel using netlink. The kernel will try to offload
> > the requests to the HW via switchdev API (not implemented yet).
> >
> > Any notification emitted by CFM from the kernel can be monitored in user
> > space by starting 'cfm_server' program.
> >
> > Currently this 'cfm' and 'cfm_server' programs are standalone placed in a
> > cfm repository https://github.com/microchip-ung/cfm but it is considered
> > to integrate this into 'iproute2'.
> >
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>

Hi Stephen,

> 
> Could this be done in userspace? It is a control plane protocol.
> Could it be done by using eBPF?

I might be able to answer this. We have not considered this approach of
using eBPF. Because we want actually to push this in HW extending
switchdev API. I know that this series doesn't cover the switchdev part
but we posted like this because we wanted to get some feedback from
community. We had a similar approach for MRP, where we extended the
bridge and switchdev API, so we tought that is the way to go forward.

Regarding eBPF, I can't say that it would work or not because I lack
knowledge in this.

> 
> Adding more code in bridge impacts a large number of users of Linux distros.
> It creates bloat and potential security vulnerabilities.

-- 
/Horatiu
