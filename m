Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 098F156AF7D
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 03:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF72842449;
	Fri,  8 Jul 2022 01:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF72842449
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=jkUoycSR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vzDl2rMpGfsp; Fri,  8 Jul 2022 01:00:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2CE404244A;
	Fri,  8 Jul 2022 01:00:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CE404244A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BE807C007D;
	Fri,  8 Jul 2022 01:00:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BBDF2C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 01:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 829898461C
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 01:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 829898461C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jkUoycSR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eiFqKQ_2fpyd for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 01:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60CF88461B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60CF88461B
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 01:00:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9DBF261722;
 Fri,  8 Jul 2022 01:00:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39325C3411E;
 Fri,  8 Jul 2022 01:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657242035;
 bh=70o+V3ET76drXM83rOdHEUsJuE2jU9gz82CTfzhNP0A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jkUoycSRQnG2Kh4/DvYw/ce+0v3+iNaW8HRBzoeSHYwm1RYucKZ+ua6u4dXGjwTlr
 N5QDKSvQp6sHnUky/qoZPZSc5HAOGW7dOQ1TomiH/VjTogx/SdP14x+HBv39VgFzqb
 /r0TSeUTNMUo3nM4JAOhRo8M0Pba0pt0p/CohpCNxX22CQKUk9qc7U06rC1ctRw63I
 tTyaoNhBA9FFU+KaMOM0TE7IKo2fZ7qMOSlMNLWPNM2feeVhgVZpkmFS+nEWr/bOKB
 7LArADuTVJJxzG+/4Cu/N6foNVlAKq4B5Il6lXh354DLiCM9OC0mdpPMnJ+b86s6qo
 HUsAIqvrKEphg==
Date: Thu, 7 Jul 2022 18:00:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220707180025.42cc41d8@kernel.org>
In-Reply-To: <20220707152930.1789437-1-netdev@kapio-technology.com>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH v4 net-next 0/6] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On Thu,  7 Jul 2022 17:29:24 +0200 Hans Schultz wrote:
>  [PATCH v4 net-next 0/6] Extend locked port feature with FDB locked flag (MAC-Auth/MAB)

Let's give it a day or two for feedback but the series does not apply
cleanly to net-next so a rebase & repost will be needed even if it's
otherwise perfect.
