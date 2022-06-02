Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F56853B7E8
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 13:37:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 611FB82A0E;
	Thu,  2 Jun 2022 11:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOHVq6yy6VKH; Thu,  2 Jun 2022 11:37:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0685882EA1;
	Thu,  2 Jun 2022 11:37:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6FAEC0081;
	Thu,  2 Jun 2022 11:37:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 50A4AC002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 11:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DD2282980
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 11:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PxxW3GhBW6VR for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 11:37:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AEB9828C5
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 11:37:01 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id h23so7355299lfe.4
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 04:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=QhgQbZWu2ePNiL3kMffzc1g5XrP31lL0xDbJldxuiGY=;
 b=M4t2nL/LCOWMr0V/YY9BBpnfhddK4t6Gl1lkZJ+TkHO6s8enHiaddn/RhaCwpPgXiO
 gdiwCkA8W4vD2BkM8rqL3V0/W91hvX337zO9s8lmkdd4tUz49tR+VscPfDTYzjYDUzD0
 4aFmSb09d0uc8VwlyarQXo5N5UGpwSZLGPrMFrsHxVu97bNsTOyQhn55ZQjSpj4ZpBsO
 jYwqu9Dv0EskGdBCnAoMb3Kcukj6xFOCpcC4NskgBOsvGsADKkq6Q7JORcV8Y5C/V9mO
 jtpMCsFqlY7p8EtQ4fjBG4TU7GITmsmPe8m61t+CyMBcf4gURvxtPWMcWchk0nl3BzRF
 oRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=QhgQbZWu2ePNiL3kMffzc1g5XrP31lL0xDbJldxuiGY=;
 b=xR0XamiffTUbs3NlTYovwvkXk9GX2oeOdmZdidoIgfK5MslEIcZZV3/bzeOk3SeiyH
 CHLXiasOv3TmMF/PLAIC0fvbF3ar7LFa8noVvm0vnXvSSm6vUeDlBymTqDoKShO9BlHU
 VvV+8cS2RLVFF/62qwtlx9JyLncCk0az0NvMl7HlrNGyx68dIWlZMREBmXt0837oUJCB
 91XGPkKQG9vPW7GIwbMOgyrDgMjW1TgNQkMgbovkf/QfajQdjyOJFtCgmOWhdbz04Hmw
 HbJs7UJSF+J+djJ7+945h5TpHlEMG0sp6OQhJNmajBvuSc5gz9R0a95M4PIjqnp93xJT
 AZgA==
X-Gm-Message-State: AOAM531gvNEX580Q0WpyqQfSvMwdG3RGNGDB2GM7PZ0/KgTc5/hXH85T
 g0v0slKs/KYUAzCJD3wpUFU=
X-Google-Smtp-Source: ABdhPJx2ZwZMc6l3wFvubNZybiksfRe/jz2RVM5jGLd1JkTPBjOzUEYnV5PXcTd9GviWD3ZKktIgAQ==
X-Received: by 2002:a05:6512:3c93:b0:44b:4ba:c334 with SMTP id
 h19-20020a0565123c9300b0044b04bac334mr3300232lfv.27.1654169819579; 
 Thu, 02 Jun 2022 04:36:59 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.28]) by smtp.gmail.com with ESMTPSA id
 h12-20020ac25d6c000000b004740f2bb4d5sm978972lft.258.2022.06.02.04.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jun 2022 04:36:59 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YpiTbOsh0HBMwiTE@shredder>
References: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder> <86y1yfzap3.fsf@gmail.com>
 <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
 <86sfonjroi.fsf@gmail.com>
 <3d93d46d-c484-da0a-c12c-80e83eba31c9@blackwall.org>
 <YpiTbOsh0HBMwiTE@shredder>
Date: Thu, 02 Jun 2022 13:36:56 +0200
Message-ID: <86pmjrjnzb.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
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

On tor, jun 02, 2022 at 13:39, Ido Schimmel <idosch@nvidia.com> wrote:
> On Thu, Jun 02, 2022 at 01:30:06PM +0300, Nikolay Aleksandrov wrote:
>> On 02/06/2022 13:17, Hans Schultz wrote:
>> > On tor, jun 02, 2022 at 12:33, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> >> On 02/06/2022 12:17, Hans Schultz wrote:
>> >>> On tis, maj 31, 2022 at 17:23, Ido Schimmel <idosch@nvidia.com> wrote:
>> >>>> On Tue, May 31, 2022 at 11:34:21AM +0200, Hans Schultz wrote:
>> > 
>> >>> Another issue is that
>> >>> bridge fdb add MAC dev DEV master static
>> >>> seems to add the entry with the SELF flag set, which I don't think is
>> >>> what we would want it to do or?
>> >>
>> >> I don't see such thing (hacked iproute2 to print the flags before cmd):
>> >> $ bridge fdb add 00:11:22:33:44:55 dev vnet110 master static
>> >> flags 0x4
>> >>
>> >> 0x4 = NTF_MASTER only
>> >>
>> > 
>> > I also get 0x4 from iproute2, but I still get SELF entries when I look
>> > with:
>> > bridge fdb show dev DEV
>> > 
>> 
>> after the above add:
>> $ bridge fdb show dev vnet110 | grep 00:11
>> 00:11:22:33:44:55 master virbr0 static

>
> I think Hans is testing with mv88e6xxx which dumps entries directly from
> HW via ndo_fdb_dump(). See dsa_slave_port_fdb_do_dump() which sets
> NTF_SELF.
>
> Hans, are you seeing the entry twice? Once with 'master' and once with
> 'self'?
>

Well yes, but I get some additional entries with 'self' for different
vlans. So from clean adding a random fdb entry I get 4 entries on the
port, 2 with 'master' and two with 'self'.
It looks like this:

# bridge fdb add  00:22:33:44:55:66 dev eth6 master static
# bridge fdb show dev eth6 | grep 55
00:22:33:44:55:66 vlan 1 master br0 offload static
00:22:33:44:55:66 master br0 offload static
00:22:33:44:55:66 vlan 1 self static
00:22:33:44:55:66 vlan 4095 self static

If I do a replace of a locked entry I only get one with the 'self' flag.
