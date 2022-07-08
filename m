Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 258B356AF75
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 02:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24E2184611;
	Fri,  8 Jul 2022 00:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24E2184611
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=J7buxAjo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 75OwXk_WpRYK; Fri,  8 Jul 2022 00:44:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7CA3E84612;
	Fri,  8 Jul 2022 00:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CA3E84612
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 117A0C007D;
	Fri,  8 Jul 2022 00:44:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94179C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 00:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6703742408
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 00:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6703742408
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J7buxAjo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjq4YoO0Al30 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 00:44:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32870423F8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32870423F8
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 00:44:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BD28D6091F;
 Fri,  8 Jul 2022 00:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E0EDC3411E;
 Fri,  8 Jul 2022 00:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657241048;
 bh=EC7a4jTfAaizoRSMF4FsVpM10jc1Vx60by0MKMOikKI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J7buxAjoy+adEYbK2ndgRVkdH/bRZQd1xQJ83dKqMYPLqzO7K8SohPXucoAmj7lJw
 lXlK98vnwsMtyUs6cqJvdncgZSM+u8iWNEd84GaJxGEb8JwmJznOQ8diA8yX3EE+9t
 AyBc2jtDAHiy/c9qalzH/C4zpxEfR44rctLToIM/H+o6DzxW+shjErAqPIZ51BH2Tj
 w3PhcIgxKUGzp6rfEjTCNkv8zm+iHrtWRB+8L8NEZ7Mv9xOAjzyEzGVOLdus18aNvi
 qFBhYl1bIalHBXubutm/9Fbfkaocgls6Zfa3BLkpbMVdpgT4B7+bPE8Q+LLXcKle9S
 rXNUZKZHDb9sw==
Date: Thu, 7 Jul 2022 17:43:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220707174358.3b1b804a@kernel.org>
In-Reply-To: <20220707102836.u7ig6rr2664mcrlf@skbuf>
References: <20220706122502.1521819-1-netdev@kapio-technology.com>
 <20220707102836.u7ig6rr2664mcrlf@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/1] net: dsa: mv88e6xxx: allow
 reading FID when handling ATU violations
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

On Thu, 7 Jul 2022 13:28:36 +0300 Vladimir Oltean wrote:
> Make no mistake, the existing code doesn't disallow reading back the FID
> during an ATU Get/Clear Violation operation, and your patch isn't
> "allowing" something that wasn't disallowed.
> 
> The documentation for the ATU FID register says that its contents is
> ignored before the operation starts, and it contains the returned ATU
> entry's FID after the operation completes.
> 
> So the change simply says: don't bother to write the ATU FID register
> with zero, it doesn't matter what this contains. This is probably true,
> but the patch needs to do what's written on the box.
> 
> Please note that this only even matters at all for switches with
> mv88e6xxx_num_databases(chip) > 256, where MV88E6352_G1_ATU_FID is a
> dedicated register which this patch avoids writing. For other switches,
> the FID is embedded within MV88E6XXX_G1_ATU_CTL or MV88E6XXX_G1_ATU_OP.
> So _practically_, for those switches, you are still emitting the
> GET_CLR_VIOLATION ATU op with a FID of 0 whether you like it or not, and
> this patch introduces a (most likely irrelevant) discrepancy between the
> access methods for various switches.
> 
> Please note that this observation is relevant for your future changes to
> read back the FID too. As I said here:
> https://patchwork.kernel.org/project/netdevbpf/patch/20220524152144.40527-4-schultz.hans+netdev@gmail.com/#24912482
> you can't just assume that the FID lies within the MV88E6352_G1_ATU_FID
> register, just look at the way it is packed within mv88e6xxx_g1_atu_op().
> You'll need to unpack it in the same way.

I reckon it'll be useful to render some of this info into the commit
message and adjust the subject so marking Changes Requested.
