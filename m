Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480174D8DA8
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 21:01:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7A0840157;
	Mon, 14 Mar 2022 20:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6SePGT7wTS-0; Mon, 14 Mar 2022 20:01:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 30A70401B3;
	Mon, 14 Mar 2022 20:01:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF377C0084;
	Mon, 14 Mar 2022 20:01:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77B46C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6281E82542
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbFr9eQLT5pi for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 20:01:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73CC1824EF
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 20:01:17 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id w12so29157369lfr.9
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 13:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=F5mU9o7savlVkOpAVXAc7vZgunxy8jXIc2Wup8XxmsY=;
 b=U9r3p6udDqYlZ1aopd62hIGt17gWQvQg7QbrFEqTQOh59FTbqt6d+jnOaxtuOemxUx
 fc8Cm//gfPrMpb46jCfiDzcT2SRuCSHU4LZvHM+j4uGUzaPmhhsaFt3Mra/xnGnwt3z1
 NvVVn/WRXQJVn3RMkkWAQxgRotPoF/Cf/qFIxY5bKHkOBrBM7//tpkLQf7zt1KFfgzD+
 YNEi7mazSo0xLGI7QHGT/qPi++c6x9OOylHKgsHWcp8raYtetaDbdH/UxwcuqaGuJmzX
 pX4Nj7n69fCKkgPH++8LHtka06ngmG4Ta9Hdb2RTKiknFDUEjkh7aClHpBD7jW+pFoBk
 zMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=F5mU9o7savlVkOpAVXAc7vZgunxy8jXIc2Wup8XxmsY=;
 b=7dCk8VDLcZb7IGmN/CuEmyi/9TOOlbfnr2yc3YAvMskQqDDa1jZ7jp5dVcJrPjOiVG
 JsCQLd0Cg785ZwwkLt7ldStWhmlmrVjiv6vg95M1lpUfTKDFnVq/rDnelHuXCY9H3qvM
 OE2fb2OkCOPgB4z/e4r0qbj+G7v2w/HaL5xg0HZ/Gl7xVszys15raGk2pgbdJa/gNtOQ
 OmZYT138NJvtqSA/e5cNrG7sYkV8hTSx9ESDua65a7mPmyYfyecI/VTTS5RWn3qMNEGD
 l9TuAnl+eai8Slz7kU2pfL8FHpfVQe2F18CyAUfVjFFedM15yRtBJ72TwCFSGXNnbAAD
 2MEA==
X-Gm-Message-State: AOAM532TVd5kgHFqiTo2jIsFt6VQnbouA7vPJw7peRrQ+kdy83KJf14F
 nbADOONLUatO7FWjPRdkQALBlLFNtQeoFS9psSI=
X-Google-Smtp-Source: ABdhPJyHDyPenGqPAi41TYDlo5mD300lE2AJ2gyHhdiUNZlkYSUqN58v0syL+saGgM1BBbx8/gwZZA==
X-Received: by 2002:ac2:4ac2:0:b0:448:373b:dca5 with SMTP id
 m2-20020ac24ac2000000b00448373bdca5mr14094527lfp.568.1647288075110; 
 Mon, 14 Mar 2022 13:01:15 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 t10-20020ac24c0a000000b004482e94a3b5sm3431991lfq.16.2022.03.14.13.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 13:01:14 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220314175556.7mjr4tui4vb4i5qn@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-10-tobias@waldekranz.com>
 <20220314165649.vtsd3xqv7htut55d@skbuf>
 <20220314175556.7mjr4tui4vb4i5qn@skbuf>
Date: Mon, 14 Mar 2022 21:01:12 +0100
Message-ID: <87mthsl2wn.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
 support for MST
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

On Mon, Mar 14, 2022 at 19:55, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Mar 14, 2022 at 06:56:49PM +0200, Vladimir Oltean wrote:
>> > diff --git a/net/dsa/port.c b/net/dsa/port.c
>> > index 58291df14cdb..1a17a0efa2fa 100644
>> > --- a/net/dsa/port.c
>> > +++ b/net/dsa/port.c
>> > @@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
>> >  	if (err && err != -EOPNOTSUPP)
>> >  		return err;
>> >  
>> > +	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
>> > +	if (err && err != -EOPNOTSUPP)
>> > +		return err;
>> 
>> Sadly this will break down because we don't have unwinding on error in
>> place (sorry). We'd end up with an unoffloaded bridge port with
>> partially synced bridge port attributes. Could you please add a patch
>> previous to this one that handles this, and unoffloads those on error?
>
> Actually I would rather rename the entire dsa_port_mst_enable() function
> to dsa_port_mst_validate() and move it to the beginning of dsa_port_bridge_join().
> This simplifies the unwinding that needs to take place quite a bit.

Well you still need to unwind vlan filtering if setting the ageing time
fails, which is the most complicated one, right? Still, I agree that
_validate is a better name, and then _bridge_join seems like a more
reasonable placement. Should the unwinding patch still be part of this
series then?

While we're here, I actually made this a hard error in both scenarios
(but forgot to update the log - will do that in v4, depending on what we
decide here). There's a dilemma:

- When reacting to the attribute event, i.e. changing the mode on a
  member we're apart of, we _can't_ return -EOPNOTSUPP as it will be
  ignored, which is why dsa_port_mst_validate (nee _enable) returns
  -EINVAL.

- When joining a bridge, we _must_ return -EOPNOTSUPP to trigger the
  software fallback.

Having something like this in dsa_port_bridge_join...

err = dsa_port_mst_validate(dp);
if (err == -EINVAL)
	return -EOPNOTSUPP;
else if (err)
	return err;

...works I suppose, but feels somewhat awkwark. Any better ideas?

