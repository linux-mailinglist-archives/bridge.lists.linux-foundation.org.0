Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 498777697CC
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49EC4813CE;
	Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49EC4813CE
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=KsdMyLQD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkdCyl69ykiE; Mon, 31 Jul 2023 13:38:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3A63080F26;
	Mon, 31 Jul 2023 13:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A63080F26
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7B66BC0032;
	Mon, 31 Jul 2023 13:38:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFC3DC0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9274481DF5
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9274481DF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d7SD56uc4VU5 for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:32 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8608481DEF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8608481DEF
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2b9540031acso62808021fa.3
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787850; x=1691392650;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7wceAR80ht6V8UDrNIuYtWCCNzgC5666xu1w58CAmzE=;
 b=KsdMyLQDqJxdf7UrLyN+lgd8CyVBkzcc+3WL6Hpc6GL56/FLvLpAs3fDCKrllFB75w
 I4xgpt3dPofWII8KOjE/gW2MpcXOpd17aPJhlBDpFxJRzFbr1vKzw7PW1AvkSsLnyUVu
 CvdoacfbhJhD9wfsK8o8tM/Q79GXdixX3jA6DueTdYN1GEY2PWBVKEqfB1k6l8+wS4Dx
 8S2pkXOAqhx+oaKekXDNCYYEasskPpy/q4BffiqS7SVBSYjKiMqQkTqs3u4SuPOG8kxz
 eMAX8xJfS9me1lyz0rBWtYaolq3o98cMupXpy6BbcB3kSwOdAPGLnTOihehT1zbZeveh
 0vQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787850; x=1691392650;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7wceAR80ht6V8UDrNIuYtWCCNzgC5666xu1w58CAmzE=;
 b=hoviVQ2INWKIjdQpsioLf0MX+NyOTJvZXLLG/A8EiuXIG6BawOYhDZgg0fRyOGMVWY
 fef1RnwwIMPiNKRE+Wi0z5xng/uha7ip5PfrUNCqVOL+T6aO75lmdyr2jag5dEw70Fj/
 zh3h1UeoHe93OwwMQl5n+xwyp518jw6bazts/sJ69Z1YDf4KnS7ITrh/YAmyQH/BH+Sl
 sQjw4cP5vXOfWMSOklkRSsPDlfPiwxMwJedf/v19L8b11qR3YUMYUaheSjC4nbOxorLt
 aknZ0aoCwKIOjIOOSRkdWHgZJBXRJP6NTgsZwEoxCdEBlDiDfjbjwzh7Moq5W89s4IiN
 CYYA==
X-Gm-Message-State: ABy/qLaxrBP++R2ZRtEshaIXmspS/p/Qe+N12Z1wdI//v7TEOwe2SMd7
 nOfN5KPaANwD3NxMG4HHS6o=
X-Google-Smtp-Source: APBJJlF/lPNYS/bvFaN9r9vnFQnU14qexL+STV+XFn/6fqwu3FhW8d1iWEt1rUEWyBs0UoL8xPMTmg==
X-Received: by 2002:a05:651c:102a:b0:2b4:47ad:8c70 with SMTP id
 w10-20020a05651c102a00b002b447ad8c70mr5506021ljm.11.1690787849766; 
 Mon, 31 Jul 2023 00:17:29 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 v18-20020a05600c215200b003fe0bb31a6asm7665098wml.43.2023.07.31.00.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:29 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:14 +0200
Message-Id: <20230731071728.3493794-1-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 31 Jul 2023 13:38:30 +0000
Cc: Joel Granados <j.granados@samsung.com>, Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 00/14] sysctl: Add a size argument to register
	functions in sysctl
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

Why?
This is a preparation patch set that will make it easier for us to apply
subsequent patches that will remove the sentinel element (last empty element)
in the ctl_table arrays.

In itself, it does not remove any sentinels but it is needed to bring all the
advantages of the removal to fruition which is to help reduce the overall build
time size of the kernel and run time memory bloat by about ~64 bytes per
sentinel. Without this patch set we would have to put everything into one big
commit making the review process that much longer and harder for everyone.

Since it is so related to the removal of the sentinel element, its worth while
to give a bit of context on this:
* Good summary from Luis about why we want to remove the sentinels.
  https://lore.kernel.org/all/ZMFizKFkVxUFtSqa@bombadil.infradead.org/
* This is a patch set that replaces register_sysctl_table with register_sysctl
  https://lore.kernel.org/all/20230302204612.782387-1-mcgrof@kernel.org/
* Patch set to deprecate register_sysctl_paths()
  https://lore.kernel.org/all/20230302202826.776286-1-mcgrof@kernel.org/
* Here there is an explicit expectation for the removal of the sentinel element.
  https://lore.kernel.org/all/20230321130908.6972-1-frank.li@vivo.com
* The "ARRAY_SIZE" approach was mentioned (proposed?) in this thread
  https://lore.kernel.org/all/20220220060626.15885-1-tangmeng@uniontech.com

What?
These commits set things up so we can start removing the sentinel elements.
They modify sysctl and net_sysctl internals so that registering a ctl_table
that contains a sentinel gives the same result as passing a table_size
calculated from the ctl_table array without a sentinel. We accomplish this by
introducing a table_size argument in the same place where procname is checked
for NULL. The idea is for it to keep stopping when it hits ->procname == NULL,
while the sentinel is still present. And when the sentinel is removed, it will
stop on the table_size (thx to jani.nikula@linux.intel.com for the discussion
that led to this). This allows us to remove sentinels from one (or several)
files at a time.

These commits are part of a bigger set containing the removal of ctl_table sentinel
(https://github.com/Joelgranados/linux/tree/tag/sysctl_remove_empty_elem_V2).
The idea is to make the review process easier by chunking the 65+ commits into
manageable pieces.

My idea is to send out one chunk at a time so it can be reviewed separately
from the others without the noise from parallel related sets. After this first
chunk will come 6 that remove the sentinel element from "arch/*, drivers/*,
fs/*, kernel/*, net/* and miscellaneous. And then a final one that removes the
->procname == NULL check. You can see all commits here
(https://github.com/Joelgranados/linux/tree/tag/sysctl_remove_empty_elem_V2).

Commits in this chunk:
* Preparation commits:
    start : sysctl: Prefer ctl_table_header in proc_sysct
    end   : sysctl: Add size argument to init_header
  These are preparation commits that make sure that we have the
  ctl_table_header where we need the array size.

* Add size to __register_sysctl_table, __register_sysctl_init and register_sysctl
    start : sysctl: Add a size arg to __register_sysctl_table
    end   : sysctl: Add size arg to __register_sysctl_init
  Here we replace the existing register functions with macros that add the
  ARRAY_SIZE automatically. Unfortunately these macros cannot be used for the
  register calls that pass a pointer; in this situation we add register
  functions with an table_size argument (thx to greg@kroah.com for bringing
  this to my attention)

* Add size to register_net_sysctl
    start : sysctl: Add size to register_net_sysctl function
    end   : sysctl: SIZE_MAX->ARRAY_SIZE in register_net_sysctl
  register_net_sysctl is an indirection function to the sysctl registrations
  and needed a several commits to add table_size to all its callers. We
  temporarily use SIZE_MAX to avoid compiler warnings while we change to
  register_net_sysctl to register_net_sysctl_sz; we remove it with the
  penultimate patch of this set. Finally, we make sure to adjust the calculated
  size every time there is a check for unprivileged users.

* Add size as additional stopping criteria
    commit : sysctl: Use ctl_table_size as stopping criteria for list macro
  We add table_size check in the main macro within proc_sysctl.c. This commit
  allows the removal of the sentinel element by chunks.

Testing:
* Ran sysctl selftests (./tools/testing/selftests/sysctl/sysctl.sh)
* Successfully ran this through 0-day

Size saving estimates:
A consequence of eventually removing all the sentinels (64 bytes per sentinel)
is the bytes we save. These are *not* numbers that we will get after this patch
set; these are the numbers that we will get after removing all the sentinels. I
included them here because they are relevant and to get an idea of just how
much memory we are talking about.
  * bloat-o-meter:
    The "yesall" configuration results save 9158 bytes (you can see the output here
    https://lore.kernel.org/all/20230621091000.424843-1-j.granados@samsung.com/.
    The "tiny" configuration + CONFIG_SYSCTL save 1215 bytes (you can see the
    output here [2])
  * memory usage:
    As we no longer need the sentinel element within proc_sysctl.c, we save some
    bytes in main memory as well. In my testing kernel I measured a difference of
    6720 bytes. I include the way to measure this in [1]

Comments/feedback greatly appreciated

V2:
* Dropped moving mpls_table up the af_mpls.c file. We don't need it any longer
  as it is not really used before its current location.
* Added/Clarified the why in several commit messages that were missing it.
* Clarified the why in the cover letter to be "to make it easier to apply
  subsequent patches that will remove the sentinels"
* Added documentation for table_size
* Added suggested by tags (Greg and Jani) to relevant commits

Best
Joel

[1]
To measure the in memory savings apply this patch on top of
https://github.com/Joelgranados/linux/tree/tag/sysctl_remove_empty_elem_V1
"
diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 5f413bfd6271..9aa8374c0ef1 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -975,6 +975,7 @@ static struct ctl_dir *new_dir(struct ctl_table_set *set,
        table[0].procname = new_name;
        table[0].mode = S_IFDIR|S_IRUGO|S_IXUGO;
        init_header(&new->header, set->dir.header.root, set, node, table, 1);
+       printk("%ld sysctl saved mem kzalloc \n", sizeof(struct ctl_table));

        return new;
 }
@@ -1202,6 +1203,7 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_
                    head->ctl_table_size);
        links->nreg = head->ctl_table_size;

+       printk("%ld sysctl saved mem kzalloc \n", sizeof(struct ctl_table));
        return links;
 }

"
and then run the following bash script in the kernel:

accum=0
for n in $(dmesg | grep kzalloc | awk '{print $3}') ; do
    echo $n
    accum=$(calc "$accum + $n")
done
echo $accum

[2]
bloat-o-meter with "tiny" config:
add/remove: 0/2 grow/shrink: 33/24 up/down: 470/-1685 (-1215)
Function                                     old     new   delta
insert_header                                831     966    +135
__register_sysctl_table                      971    1092    +121
get_links                                    177     226     +49
put_links                                    167     186     +19
erase_header                                  55      66     +11
sysctl_init_bases                             59      69     +10
setup_sysctl_set                              65      73      +8
utsname_sysctl_init                           26      31      +5
sld_mitigate_sysctl_init                      33      38      +5
setup_userns_sysctls                         158     163      +5
sched_rt_sysctl_init                          33      38      +5
sched_fair_sysctl_init                        33      38      +5
sched_dl_sysctl_init                          33      38      +5
random_sysctls_init                           33      38      +5
page_writeback_init                          122     127      +5
oom_init                                      73      78      +5
kernel_panic_sysctls_init                     33      38      +5
kernel_exit_sysctls_init                      33      38      +5
init_umh_sysctls                              33      38      +5
init_signal_sysctls                           33      38      +5
init_pipe_fs                                  94      99      +5
init_fs_sysctls                               33      38      +5
init_fs_stat_sysctls                          33      38      +5
init_fs_namespace_sysctls                     33      38      +5
init_fs_namei_sysctls                         33      38      +5
init_fs_inode_sysctls                         33      38      +5
init_fs_exec_sysctls                          33      38      +5
init_fs_dcache_sysctls                        33      38      +5
register_sysctl                               22      25      +3
__register_sysctl_init                         9      12      +3
user_namespace_sysctl_init                   149     151      +2
sched_core_sysctl_init                        38      40      +2
register_sysctl_mount_point                   13      15      +2
vm_table                                    1344    1280     -64
vm_page_writeback_sysctls                    512     448     -64
vm_oom_kill_table                            256     192     -64
uts_kern_table                               448     384     -64
usermodehelper_table                         192     128     -64
user_table                                   576     512     -64
sld_sysctls                                  128      64     -64
signal_debug_table                           128      64     -64
sched_rt_sysctls                             256     192     -64
sched_fair_sysctls                           128      64     -64
sched_dl_sysctls                             192     128     -64
sched_core_sysctls                            64       -     -64
root_table                                   128      64     -64
random_table                                 448     384     -64
namei_sysctls                                320     256     -64
kern_table                                  1792    1728     -64
kern_panic_table                             128      64     -64
kern_exit_table                              128      64     -64
inodes_sysctls                               192     128     -64
fs_stat_sysctls                              256     192     -64
fs_shared_sysctls                            192     128     -64
fs_pipe_sysctls                              256     192     -64
fs_namespace_sysctls                         128      64     -64
fs_exec_sysctls                              128      64     -64
fs_dcache_sysctls                            128      64     -64
init_header                                   85       -     -85
Total: Before=1877669, After=1876454, chg -0.06%

base:  fdf0eaf11452

Joel Granados (14):
  sysctl: Prefer ctl_table_header in proc_sysctl
  sysctl: Use ctl_table_header in list_for_each_table_entry
  sysctl: Add ctl_table_size to ctl_table_header
  sysctl: Add size argument to init_header
  sysctl: Add a size arg to __register_sysctl_table
  sysctl: Add size to register_sysctl
  sysctl: Add size arg to __register_sysctl_init
  sysctl: Add size to register_net_sysctl function
  ax.25: Update to register_net_sysctl_sz
  netfilter: Update to register_net_sysctl_sz
  networking: Update to register_net_sysctl_sz
  vrf: Update to register_net_sysctl_sz
  sysctl: SIZE_MAX->ARRAY_SIZE in register_net_sysctl
  sysctl: Use ctl_table_size as stopping criteria for list macro

 arch/arm64/kernel/armv8_deprecated.c    |  2 +-
 arch/s390/appldata/appldata_base.c      |  2 +-
 drivers/net/vrf.c                       |  3 +-
 fs/proc/proc_sysctl.c                   | 90 +++++++++++++------------
 include/linux/sysctl.h                  | 31 +++++++--
 include/net/ipv6.h                      |  2 +
 include/net/net_namespace.h             | 10 +--
 ipc/ipc_sysctl.c                        |  4 +-
 ipc/mq_sysctl.c                         |  4 +-
 kernel/ucount.c                         |  5 +-
 net/ax25/sysctl_net_ax25.c              |  3 +-
 net/bridge/br_netfilter_hooks.c         |  3 +-
 net/core/neighbour.c                    |  8 ++-
 net/core/sysctl_net_core.c              |  3 +-
 net/ieee802154/6lowpan/reassembly.c     |  8 ++-
 net/ipv4/devinet.c                      |  3 +-
 net/ipv4/ip_fragment.c                  |  3 +-
 net/ipv4/route.c                        |  8 ++-
 net/ipv4/sysctl_net_ipv4.c              |  3 +-
 net/ipv4/xfrm4_policy.c                 |  3 +-
 net/ipv6/addrconf.c                     |  3 +-
 net/ipv6/icmp.c                         |  5 ++
 net/ipv6/netfilter/nf_conntrack_reasm.c |  3 +-
 net/ipv6/reassembly.c                   |  3 +-
 net/ipv6/route.c                        | 13 ++--
 net/ipv6/sysctl_net_ipv6.c              | 16 +++--
 net/ipv6/xfrm6_policy.c                 |  3 +-
 net/mpls/af_mpls.c                      |  6 +-
 net/mptcp/ctrl.c                        |  3 +-
 net/netfilter/ipvs/ip_vs_ctl.c          |  8 ++-
 net/netfilter/ipvs/ip_vs_lblc.c         | 10 ++-
 net/netfilter/ipvs/ip_vs_lblcr.c        | 10 ++-
 net/netfilter/nf_conntrack_standalone.c |  4 +-
 net/netfilter/nf_log.c                  |  7 +-
 net/rds/tcp.c                           |  3 +-
 net/sctp/sysctl.c                       |  4 +-
 net/smc/smc_sysctl.c                    |  3 +-
 net/sysctl_net.c                        | 26 ++++---
 net/unix/sysctl_net_unix.c              |  3 +-
 net/xfrm/xfrm_sysctl.c                  |  8 ++-
 40 files changed, 222 insertions(+), 117 deletions(-)

-- 
2.30.2

