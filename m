Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A4E4D9A13
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 12:12:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B0E6841CC;
	Tue, 15 Mar 2022 11:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NhT2QQ7SNIcj; Tue, 15 Mar 2022 11:12:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 59017841A3;
	Tue, 15 Mar 2022 11:12:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E2E9CC0033;
	Tue, 15 Mar 2022 11:11:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B6A5C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07D6B60D6A
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRtT-1Upcn2r for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 11:11:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DFF3607EC
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:11:57 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 11C663200E18;
 Tue, 15 Mar 2022 07:11:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 15 Mar 2022 07:11:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=PFSNAaQ3b1RcaB6X84veMT1/sBRoeUjyrqfGf9I6k
 Og=; b=bYoQ3qBUijQDWuiMSLzE4q+q+z0Gnv/45k26R0Y4upBMft9FoRm+QqoV1
 L1tAP8N8P9Z5rlqJRm3EU+5auE2ltko4YoRFav8LqT7z3zAKZYuqTql9Ywt3kJl4
 kWIxH0uZtyJSdm60O2fzzwSHjr0bp7QoxUjm8RAkWJioY9HlGFN/5Oc9YIbPTnU2
 7xBEqbuWoig5fUNRaIsF+kP9+TuJARZsIsL1rYThScoqMdPfDHC9CPZuJjmG6o5i
 5UJNrcakzAlg69TJU92fjvXKeFF/xLxT7Ts7FZKLdhok6brI6q0XMCShbIFCe4nB
 JnZNUx0Gmy6gdhu0XfF/rvUW3eVVQ==
X-ME-Sender: <xms:eXQwYr2zUUvqBdxITSJZUzz5xfwE3VacwoS5MUd9bSohpzOv6xtRZw>
 <xme:eXQwYqFxd1k2zx0khHdNK5XsyJ1SVoAu8uc1Rh6TjgrYLLSFN8PsBHlwG06M6yR-6
 6y8oCGs_iP_lmM>
X-ME-Received: <xmr:eXQwYr5fvr3KyesJQEeW6147h0FGtUpXoHlevOrhckESwOWwonV_sjhjPzdi2C2B5YlxS6jET7fIARamx7ihMq85VrU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeftddgvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvdffveekfeeiieeuieetudefkeevkeeuhfeuieduudetkeegleefvdegheej
 hefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:eXQwYg3kHiD1cyJsbYxllslnZ16TnXP3kOSjBeqFMMjIEHj65uh7sw>
 <xmx:eXQwYuGLSiywBAGrd1KAxWS30bcA-dWbHmLFJAsNoK9hFYnXlwPw9A>
 <xmx:eXQwYh9RvGf7fu_IK5FqagOq8ib7rjIQo3UR6qnkkvexkH8uEQpTrw>
 <xmx:enQwYqHoZD87zr1hps7lLHJJKI61WRsmaWH0MQYzPZmMAbJfb-kfJg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 15 Mar 2022 07:11:53 -0400 (EDT)
Date: Tue, 15 Mar 2022 13:11:49 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YjB0ddhesVOEucYG@shredder>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <Yi9kTh6XZu3OiCz0@shredder> <86ee33h9q2.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86ee33h9q2.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/3] Extend locked port feature with
 FDB locked flag (MAC-Auth/MAB)
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

On Tue, Mar 15, 2022 at 09:59:49AM +0100, Hans Schultz wrote:
> On m�n, mar 14, 2022 at 17:50, Ido Schimmel <idosch@idosch.org> wrote:
> > On Thu, Mar 10, 2022 at 03:23:17PM +0100, Hans Schultz wrote:
> >> This patch set extends the locked port feature for devices
> >> that are behind a locked port, but do not have the ability to
> >> authorize themselves as a supplicant using IEEE 802.1X.
> >> Such devices can be printers, meters or anything related to
> >> fixed installations. Instead of 802.1X authorization, devices
> >> can get access based on their MAC addresses being whitelisted.
> >> 
> >> For an authorization daemon to detect that a device is trying
> >> to get access through a locked port, the bridge will add the
> >> MAC address of the device to the FDB with a locked flag to it.
> >> Thus the authorization daemon can catch the FDB add event and
> >> check if the MAC address is in the whitelist and if so replace
> >> the FDB entry without the locked flag enabled, and thus open
> >> the port for the device.
> >> 
> >> This feature is known as MAC-Auth or MAC Authentication Bypass
> >> (MAB) in Cisco terminology, where the full MAB concept involves
> >> additional Cisco infrastructure for authorization. There is no
> >> real authentication process, as the MAC address of the device
> >> is the only input the authorization daemon, in the general
> >> case, has to base the decision if to unlock the port or not.
> >> 
> >> With this patch set, an implementation of the offloaded case is
> >> supplied for the mv88e6xxx driver. When a packet ingresses on
> >> a locked port, an ATU miss violation event will occur. When
> >
> > When do you get an ATU miss violation? In case there is no FDB entry for
> > the SA or also when there is an FDB entry, but it points to a different
> > port? I see that the bridge will only create a "locked" FDB entry in
> > case there is no existing entry, but it will not transition an existing
> > entry to "locked" state. I guess ATU miss refers to an actual miss and
> > not mismatch.
> >
> 
> On a locked port, I get ATU miss violations when there is no FDB entry
> for the SA, while if there is an entry but it is not assigned to the
> port, then I get an ATU member violation (which I have now masked on
> locked ports to limit unwanted interrupts).
> 
> So it seems to me that my 'ATU miss' corresponds to your MISS and my
> 'ATU member' corresponds to your MISMATCH. Since I inject an entry with
> destination port vector (DPV) zero I get member violations after the
> first miss violation.

Which causes packets to be silently dropped by the device? Sounds OK, I
just want to verify I understand the behavior.

> 
> > The HW I work with doesn't have the ability to generate such
> > notifications, but it can trap packets on MISS (no entry) or MISMATCH
> > (exists, but with different port). I believe that in order to support
> > this feature we need to inject MISS-ed packets to the Rx path so that
> > eventually the bridge itself will create the "locked" entry as opposed
> > to notifying the bridge about the entry as in your case.
> >
> 
> This seems to me to be the way forward in your case. What kind or family
> of chips is your HW based on?

Nvidia Spectrum ASICs. Some users mentioned 802.1X support, but a
requirement never materialized so we didn't work on it.

> 
> >> handling such ATU miss violation interrupts, the MAC address of
> >> the device is added to the FDB with a zero destination port
> >> vector (DPV) and the MAC address is communicated through the
> >> switchdev layer to the bridge, so that a FDB entry with the
> >> locked flag enabled can be added.
> >> 
> >> Hans Schultz (3):
> >>   net: bridge: add fdb flag to extent locked port feature
> >>   net: switchdev: add support for offloading of fdb locked flag
> >>   net: dsa: mv88e6xxx: mac-auth/MAB implementation
> >
> > Please extend tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> > with new test cases for this code.
> >
> 
> Shall do.

Thanks!

> 
> >> 
> >>  drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
> >>  drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
> >>  drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
> >>  drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
> >>  drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
> >>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
> >>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
> >>  drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
> >>  drivers/net/dsa/mv88e6xxx/port.h              |  1 +
> >>  include/net/switchdev.h                       |  3 +-
> >>  include/uapi/linux/neighbour.h                |  1 +
> >>  net/bridge/br.c                               |  3 +-
> >>  net/bridge/br_fdb.c                           | 13 +++-
> >>  net/bridge/br_input.c                         | 11 ++-
> >>  net/bridge/br_private.h                       |  5 +-
> >>  15 files changed, 167 insertions(+), 14 deletions(-)
> >>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
> >>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
> >> 
> >> -- 
> >> 2.30.2
> >> 
