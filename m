Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B32ED53B5D4
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 11:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEEE982B1B;
	Thu,  2 Jun 2022 09:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwHvrMRC67KQ; Thu,  2 Jun 2022 09:17:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5D5CA82B9F;
	Thu,  2 Jun 2022 09:17:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08CD3C0081;
	Thu,  2 Jun 2022 09:17:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF65BC002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98CA9405A5
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XVSFeYvKK0dZ for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 09:17:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF8A640184
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:17:18 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id a2so722932lfg.5
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 02:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=x/BMPJiscOCJwChDcnTSf5xiDyx/TDj8W0/luATDtZM=;
 b=dlrHFDqdCh4D5XYD3LFF4bau4fjpwDa9QQeUEQnqjyacR8JSdJyEyqbAAhE5xs/9eo
 hbpywzBbcbbelctEIH3HvNwRbz+hkSHLTzD+g5ueE+or5NO32R15l2mqvbN/1Dwje5Bz
 h4w40/5gcmUcg2ST+QtF23Eoogki5rZA50RnWqjQOtkBotDm6XVT8hQCD0qLLbE43ZI7
 Ald8xd1yQwGSOTPjZvDSrm+lVnipzA/iFPdVyoW8Thz2nbriIH4KocuqC2LJkgOSaNSQ
 b8q+OTbw3oIKnLnNw+65ewXePQYLl8PZZ4m4E5LLpcbDQTn+C3/HUid64m5sB0DhmMQV
 KQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=x/BMPJiscOCJwChDcnTSf5xiDyx/TDj8W0/luATDtZM=;
 b=UXhET0MS9GegDuEF+2O32By8wJBKA51/R7wbaTx1VfaDOjOsUU2ri35Wu+PRscRtIU
 hXmPP+suy1gcWq9s68DsC8j1vrAFpoKcBs1zuKHgL94/ZD8/HVOGGoplLytbd2GEYjEu
 vqxKB16kXTwE8Xshb2RX7ScyWTb7RDNql0J1p24asVoY0bm7lURSRENLalRhIs+qHaNq
 8aV4s40lHhlb08g6u94KxtZKEvevd3dnHg0eaQ96F06AH2YjowvSfLoXVvcmZsw8Ha9R
 j01V8mtLf+OcPIeuoP5DPiGaegJVYUgJUay2fqBneEGD1IlYhYaKqdu6e+537VsQfxyq
 tR8A==
X-Gm-Message-State: AOAM5316+oMczIusstZj4pSpib9kVBowxucQ970lAoOEkWq8+aXkqGl1
 NdXY5G6pI6fSR1p9EyYSsJo=
X-Google-Smtp-Source: ABdhPJyL8UcdmpF/l5y5K8HPvwVK1AZch6rwxEsr9rb2Vk8D6jkGykjQBWg93hwnagPcENwKtaVSng==
X-Received: by 2002:a05:6512:32c1:b0:478:6e6c:53a5 with SMTP id
 f1-20020a05651232c100b004786e6c53a5mr38322355lfg.435.1654161436489; 
 Thu, 02 Jun 2022 02:17:16 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.28]) by smtp.gmail.com with ESMTPSA id
 w6-20020a05651204c600b0047906bad093sm809482lfq.173.2022.06.02.02.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jun 2022 02:17:16 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YpYk4EIeH6sdRl+1@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder>
Date: Thu, 02 Jun 2022 11:17:12 +0200
Message-ID: <86y1yfzap3.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On tis, maj 31, 2022 at 17:23, Ido Schimmel <idosch@nvidia.com> wrote:
> On Tue, May 31, 2022 at 11:34:21AM +0200, Hans Schultz wrote:
>> > Just to give you another data point about how this works in other
>> > devices, I can say that at least in Spectrum this works a bit
>> > differently. Packets that ingress via a locked port and incur an FDB
>> > miss are trapped to the CPU where they should be injected into the Rx
>> > path so that the bridge will create the 'locked' FDB entry and notify it
>> > to user space. The packets are obviously rated limited as the CPU cannot
>> > handle billions of packets per second, unlike the ASIC. The limit is not
>> > per bridge port (or even per bridge), but instead global to the entire
>> > device.
>> 
>> Btw, will the bridge not create a SWITCHDEV_FDB_ADD_TO_DEVICE event
>> towards the switchcore in the scheme you mention and thus add an entry
>> that opens up for the specified mac address?
>
> It will, but the driver needs to ignore FDB entries that are notified
> with locked flag. I see that you extended 'struct
> switchdev_notifier_fdb_info' with the locked flag, but it's not
> initialized in br_switchdev_fdb_populate(). Can you add it in the next
> version?

An issue with sending the flag to the driver is that port_fdb_add() is
suddenly getting more and more arguments and getting messy in my
opinion, but maybe that's just how it is...

Another issue is that
bridge fdb add MAC dev DEV master static
seems to add the entry with the SELF flag set, which I don't think is
what we would want it to do or?
Also the replace command is not really supported properly as it is. I
have made a fix for that which looks something like this:

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6cbb27e3b976..f43aa204f375 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -917,6 +917,9 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
                if (flags & NLM_F_EXCL)
                        return -EEXIST;
 
+               if (flags & NLM_F_REPLACE)
+                       modified = true;
+
                if (READ_ONCE(fdb->dst) != source) {
                        WRITE_ONCE(fdb->dst, source);
                        modified = true;

The argument for always sending notifications to the driver in the case
of replace is that a replace command will refresh the entries timeout if
the entry is the same. Any thoughts on this?
