Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1294F1084
	for <lists.bridge@lfdr.de>; Mon,  4 Apr 2022 10:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0D8460FB1;
	Mon,  4 Apr 2022 08:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5XcNs_1uIDx; Mon,  4 Apr 2022 08:10:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2B90060EA0;
	Mon,  4 Apr 2022 08:10:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8501C0082;
	Mon,  4 Apr 2022 08:10:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2407CC0012
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 19:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CFEA848BF
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 19:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Vw2bMZYPV8M for <bridge@lists.linux-foundation.org>;
 Wed, 30 Mar 2022 19:16:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFC8784896
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 19:16:07 +0000 (UTC)
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DDBCA410E7
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 19:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1648667761;
 bh=e5dkA3qH+uuDiLClm1Oo80cVgcvwun8I0S6yuR2jxQk=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=iQ7W6OMgZtu6n1x/COyYQIbMLN+F7uc4lcz4Lz1vibHByGCxltMxn5OoDyUAjhrQX
 4V9rhblz2IHwsOqjth5i0ncyjwLH/YXGpccWgZKi7OmtrOTjDuigWQ9MI1YpUCd1LC
 iuVme6tPje+eHkpGIKzVtLtoGcsFUHNfjGe67gUSZMYh9JZrR0Pxgpka3q5VYSIYF4
 kfDDuqSy2env8GEPreJHqMsLAfiu21jm8Ye2a2HFS40r5YPc2vGuIl+gjy7oLZ45zW
 g9bOKykv2LJCEpjgieSXp6opvf+wRbSn5TIgYWtQ0RumnJPCUtPgY2WS+ch7Yi81DW
 pqB3hBI65PwzA==
Received: by mail-pg1-f200.google.com with SMTP id
 t24-20020a632258000000b003988eed18b2so2907858pgm.22
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 12:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
 :comments:mime-version:content-id:content-transfer-encoding:date
 :message-id;
 bh=e5dkA3qH+uuDiLClm1Oo80cVgcvwun8I0S6yuR2jxQk=;
 b=k26bYsK6FMfaaGFg5+tJw3/a2W6tBer1a2XROLAZocKwTPPrOobGY6Y9DI6u0tTHvz
 vhoYB24mykeWXLkA4+kFFcihKQ9zUnXDbDaQ9lEeqxaC1438CqmPMMcQQTGPE348pgGR
 q0D0e4cwW7I0gS5BsZeqYP37IhNBxg+Q3LQGtNuwCTmkK908Zu5KTfFOg7s6X5IqIOMj
 eAIpIKuc/yzdt7Fsee7Z9m/DFHQbwaUrlIodRSotmyqz5p1fSg7KToeSXwowbiMHkRIb
 DdifxWi/hCg7mIjRXVQdsksS39mA5dLsjSc/0pYe/5FtU8dyoOb0LHvohG1xiTRysVQ0
 FaFA==
X-Gm-Message-State: AOAM530n+AjChLe2Kl6DkuS4DOjEYIPd5jLovVU3m2pgreazY+K3XYbL
 sX947BHsmara77JjYR5xftkZgPiiNf1b/vDBGOlqF738u7Om/xDM5Zgfv+X5ztQF1nJEYlUB2pi
 cXvvHIuHTtDFkfpXVKCOO951mPdIw21NT/YzPHtDenZUlhILv
X-Received: by 2002:a17:903:32c9:b0:154:3a2d:fa89 with SMTP id
 i9-20020a17090332c900b001543a2dfa89mr1164464plr.3.1648667759766; 
 Wed, 30 Mar 2022 12:15:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuVXX8rsNuKbWFBBGlsKxIr2dCQWz3o3SW1jmYCbMByPw9AKu7v0w2adSLgy27rxhwPA+bmQ==
X-Received: by 2002:a17:903:32c9:b0:154:3a2d:fa89 with SMTP id
 i9-20020a17090332c900b001543a2dfa89mr1164429plr.3.1648667759379; 
 Wed, 30 Mar 2022 12:15:59 -0700 (PDT)
Received: from famine.localdomain ([50.125.80.157])
 by smtp.gmail.com with ESMTPSA id
 a7-20020aa79707000000b004fb17ad3aefsm19702135pfg.108.2022.03.30.12.15.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Mar 2022 12:15:58 -0700 (PDT)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 378D160DD1; Wed, 30 Mar 2022 12:15:58 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 2FD1CA0B18;
 Wed, 30 Mar 2022 12:15:58 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Jakub Kicinski <kuba@kernel.org>
In-reply-to: <20220330101256.53f6ef48@kernel.org>
References: <20220329114052.237572-1-wintera@linux.ibm.com>
 <20220329175421.4a6325d9@kernel.org>
 <d2e45c4a-ed34-10d3-58cd-01b1c19bd004@blackwall.org>
 <c1ec0612-063b-dbfa-e10a-986786178c93@linux.ibm.com>
 <20220330085154.34440715@kernel.org>
 <c512e765-f411-9305-013b-471a07e7f3ff@blackwall.org>
 <20220330101256.53f6ef48@kernel.org>
Comments: In-reply-to Jakub Kicinski <kuba@kernel.org>
 message dated "Wed, 30 Mar 2022 10:12:56 -0700."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2599.1648667758.1@famine>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 30 Mar 2022 12:15:58 -0700
Message-ID: <2600.1648667758@famine>
X-Mailman-Approved-At: Mon, 04 Apr 2022 08:10:53 +0000
Cc: linux-s390@vger.kernel.org, Alexandra Winter <wintera@linux.ibm.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Heiko Carstens <hca@linux.ibm.com>,
 Ido Schimmel <idosch@nvidia.com>, Hangbin Liu <liuhangbin@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2] veth: Support bonding events
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

Jakub Kicinski <kuba@kernel.org> wrote:

>On Wed, 30 Mar 2022 19:16:42 +0300 Nikolay Aleksandrov wrote:
>> > Maybe opt-out? But assuming the event is only generated on
>> > active/backup switch over - when would it be okay to ignore
>> > the notification?
>> =

>> Let me just clarify, so I'm sure I've not misunderstood you. Do you mea=
n opt-out as in
>> make it default on? IMO that would be a problem, large scale setups wou=
ld suddenly
>> start propagating it to upper devices which would cause a lot of unnece=
ssary bcast.
>> I meant enable it only if needed, and only on specific ports (second pa=
rt is not
>> necessary, could be global, I think it's ok either way). I don't think =
any setup
>> which has many upper vlans/macvlans would ever enable this.
>
>That may be. I don't have a good understanding of scenarios in which
>GARP is required and where it's not :) Goes without saying but the
>default should follow the more common scenario.

	At least from the bonding failover persective, the GARP is
needed when there's a visible topology change (so peers learn the new
path), a change in MAC address, or both.  I don't think it's possible to
determine from bonding which topology changes are visible, so any
failover gets a GARP.  The original intent as best I recall was to cover
IP addresses configured on the bond itself or on VLANs above the bond.

	If I understand the original problem description correctly, the
bonding failover causes the connectivity issue because the network
segments beyond the bond interfaces don't share forwarding information
(i.e., they are completely independent).  The peer (end station or
switch) at the far end of those network segments (where they converge)
is unable to directly see that the "to bond eth0" port went down, and
has no way to know that anything is awry, and thus won't find the new
path until an ARP or forwarding entry for "veth_a2" (from the original
diagram) times out at the peer out in the network.

>> >> My concern was about the Hangbin's alternative proposal to notify al=
l
>> >> bridge ports. I hope in my porposal I was able to avoid infinite loo=
ps.  =

>> > =

>> > Possibly I'm confused as to where the notification for bridge master
>> > gets sent..  =

>> =

>> IIUC it bypasses the bridge and sends a notify peers for the veth peer =
so it would
>> generate a grat arp (inetdev_event -> NETDEV_NOTIFY_PEERS).
>
>Ack, I was basically repeating the question of where does =

>the notification with dev =3D=3D br get generated.
>
>There is a protection in this patch to make sure the other =

>end of the veth is not plugged into a bridge (i.e. is not
>a bridge port) but there can be a macvlan on top of that
>veth that is part of a bridge, so IIUC that check is either
>insufficient or unnecessary.

	I'm a bit concerned this is becoming a interface plumbing
topology change whack-a-mole.

	In the above, what if the veth is plugged into a bridge, and
there's a end station on that bridge?  If it's bridges all the way down,
where does the need for some kind of TCN mechanism stop?

	Or instead of a veth it's an physical network hop (perhaps a
tunnel; something through which notifiers do not propagate) to another
host with another bridge, then what?

	-J

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
